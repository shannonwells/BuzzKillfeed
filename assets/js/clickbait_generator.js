const CBG = {
    buttonSelector: ".button--clickbait",

    getNewHeadline: function () {
        const headlineType = $(this).attr('id')
        CBG.setActiveButton(headlineType);
        CBG.requestHeadline(headlineType);
    },
    requestHeadline: function (headlineType) {
        $.getJSON(`/api/clickbait_generator/generate/${headlineType}`, {}, this.onGetSuccess);
        this.resetLocationHash();
    },

    resetLocationHash: function () {
        location.hash = "";
    },

    getActiveHeadlineType: function () {
        return $(CBG.buttonSelector + ".active").attr('id')
    },

    setActiveButton: function (headlineType) {
        const activeButton = $("#" + headlineType);
        $(CBG.buttonSelector).removeClass('active');
        activeButton.addClass('active');
    },

    reTwit: function (headline) {
        var twit_html = [
            '<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://clickbaitgenerator.herokuapp.com" data-text="',
            headline,
            '" data-via="ShannonEWells" data-size="large" data-count="none" data-hashtags="clickbaitgenerator"></a>'].join('');

        $("#init-twit").html(twit_html);
        // twttr.widgets.load();
    },

    // maybe this will do something else later, like register analytics
    onGetSuccess: function (data, status, xhr, leaveHashAlone) {
        data = JSON.parse(data)
        // clear the share modal link
        $(".ladom").html("");
        $(".headline").html(data.headline);

        const ogUrl = document.createElement("meta");

        ogUrl.setAttribute("property", "og:url");
        ogUrl.setAttribute("content", document.URL);
        document.head.appendChild(ogUrl);

        const ogTitle = document.createElement("meta");
        ogTitle.setAttribute("property", "og:title");
        ogTitle.setAttribute("content", data.headline);

        const ogImage = document.createElement("meta");
        ogImage.setAttribute("property", "og:image");
        ogImage.setAttribute("content", "/images/animagicalunicorn.gif");

        CBG.reTwit(data.headline);
    },

    onShareSuccess: function (xhr) {
        const share_url = JSON.parse(xhr).share_url
        console.log({share_url})
        $(".share--dialog--link").attr("href", share_url).text(share_url)
        $(".modal")
            .removeClass("hidden")
            .modal();
    },

    sharePermalink: function (event) {
        const headLine = $(".headline").text();
        const headlineType = CBG.getActiveHeadlineType();
        $.post("/api/bestof",
            {
                headline: headLine,
                headline_type: headlineType,
            }, CBG.onShareSuccess);
    },

    copyLinkToClipboard(event) {
        const copyText = $(".share--dialog--link").text();
        navigator.clipboard.writeText(copyText);
    }
}


$(document).ready(function () {
    if ($(".clickbait_generator").length) {
        $('#clickbait-buttons .button--clickbait').click(CBG.getNewHeadline);
        $("#headline--share--dialog .copy-icon").click(CBG.copyLinkToClipboard)
        $('#manual-ajax').click(CBG.sharePermalink);

        // rainbow as a color generates random rainbow colros
        // count determines number of sparkles
        // overlap allows sparkles to migrate... watch out for other dom elements though.
        $(".sparkley").sparkleh({
            color: "rainbow",
            count: 75,
            overlap: 15
        });

        $(".headline--share--button").click(CBG.sharePermalink)
    }

});

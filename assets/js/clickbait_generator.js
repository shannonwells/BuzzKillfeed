const CBG = {
    getNewHeadline: function (event) {
        CBG.getHeadline($(this).attr('id'));
    },
    getHeadline: function (headlineType) {
        $.getJSON(`/api/clickbait_generator/generate/${headlineType}`, {}, CBG.onGetSuccess);
        CBG.resetLocationHash();
    },

    resetLocationHash: function () {
        location.hash = "";
    },

    setActiveButton: function(headline_type) {
        var $activeButton = $("#" + headline_type);
        $("#clickbait-buttons .button--clickbait").removeClass('active');
        $activeButton.addClass('active');
    },

    reTwit: function(headline) {
        var twit_html = [
            '<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://clickbaitgenerator.herokuapp.com" data-text="',
            headline,
            '" data-via="ShannonEWells" data-size="large" data-count="none" data-hashtags="clickbaitgenerator"></a>'].join('');

        $("#init-twit").html(twit_html);
        twttr.widgets.load();
    },

    // maybe this will do something else later, like register analytics
    onGetSuccess: function (data, status, xhr, leaveHashAlone) {
        data = JSON.parse(data)
        // clear the share modal link
        $(".ladom").html("");
        $("#headline").html(data.headline);

        const ogUrl = document.createElement("meta");

        ogUrl.setAttribute("property", "og:url");
        ogUrl.setAttribute("content", document.URL);
        document.head.appendChild(ogUrl);

        const ogTitle =  document.createElement("meta");
        ogTitle.setAttribute("property", "og:title");
        ogTitle.setAttribute("content", data.clickbait.headline);

        const ogImage =  document.createElement("meta");
        ogImage.setAttribute("property", "og:image");
        ogImage.setAttribute("content", "/images/animagicalunicorn.gif");

        CBG.reTwit(data.clickbait.headline);
        CBG.setActiveButton(data.clickbait.type);
    },

    onShareSuccess: function (html) {
        var $modalDiv = $(".ladom");
        $(html).appendTo($modalDiv);
        $modalDiv.modal();
    },

    sharePermalink: function (event) {
        var $modalDiv = $(".ladom");
        event.preventDefault();
        if ($modalDiv.text() == "") {
            var headLine = $("#headline").text();
            var headlineType = "listicle";
            $.post("/clickbaits",
                { clickbait: {
                    headline: headLine,
                    headline_type: headlineType,
                }
            },
            CBG.onShareSuccess);
        } else {
            $modalDiv.modal();
        }
    }
}


$(document).ready(function () {
    $("a.clickbaits #clickbait-buttons .button--clickbait").click(function (event) {
        window.location = '/';
    });
    $('#clickbait-buttons .button--clickbait').click(CBG.getNewHeadline);
    $('#manual-ajax').click(CBG.sharePermalink);

    // rainbow as a color generates random rainbow colros
    // count determines number of sparkles
    // overlap allows sparkles to migrate... watch out for other dom elements though.
    $(".sparkley").sparkleh({
        color: "rainbow",
        count: 75,
        overlap: 15
    });
    document.getElementById("js-demo").textContent = "I am from clickbait_generator.js"
});

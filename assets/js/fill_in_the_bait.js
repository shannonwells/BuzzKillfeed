const FITB = {
    // getHeadline: function (wordlist) {
    // },

    onGetSuccess: function (data, status, xhr, leaveHashAlone) {
        const formClass=".fitbGame--Form";
        const reloadClass=".fitbGame--Reload";
        const resultSection=".fitbGame--Result--Section"
        const resultClass=".fitbGame--NewHeadline";

        $(formClass).addClass("hidden");
        $(resultSection).removeClass("hidden")
        try {
            data = JSON.parse(data);
        } catch (e) {
            console.error("could not parse response: ", data)
            data = {headline: "Whoops! Something broke. Please try again."}
        }
        $(resultClass).text(data.headline);
        $(reloadClass).click((_) => window.location.reload(true) )
    },

    register: function () {
        const missingFieldClass = "fitbGame__Blank--missing"
        const form = $(".fitbGame--Form")
        if (form.length === 0) return;
        template_id = form.attr("id").split("_")[1]
        const inputClass = ".fitbGame--Blank"
        const submitClass = ".fitbGame--Submit"
        const errorClass = ".fitbGame--HasError"
        const errorMessage = "You need to fill in all the fields!"

        $(submitClass).click((_) => {
            const inputs = $(inputClass)
            inputs.removeClass(missingFieldClass)
            $(errorClass).addClass("hidden")
            let error = false;
            const wordlist = inputs
                .map((idx, input) => {
                    if (input.value === "") {
                        error = true;
                        $(input).addClass(missingFieldClass)
                    }
                    return input.value
                })
                .get();
            if (error) {
                $(errorClass).removeClass("hidden").text(errorMessage)
                return;
            }
            console.log({wordlist, template_id})
            jQuery.post("/api/fill_in_the_bait", {wordlist: wordlist, template_id: template_id}, FITB.onGetSuccess, "json");
        })
    },
}

$(document).ready(function () {
    FITB.register();
});

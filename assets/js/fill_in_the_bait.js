const FITB = {
    // getHeadline: function (wordlist) {
    // },

    onGetSuccess: function (data, status, xhr, leaveHashAlone) {
        const formClass=".fitbGame__Form";
        const reloadClass=".fitbGame__Reload";
        const resultSection=".fitbGame__Result__Section"
        const resultClass=".fitbGame__NewHeadline";

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
        const missingFieldClass = "fitbGame__Blank__missing"
        const template_id = $(".fitbGame__Form")
        if (template_id.length === 0) return;
        template_id.attr("id").split("_")[1]
        const inputClass = ".fitbGame__Blank"
        const submitClass = ".fitbGame__Submit"
        const errorClass = ".fitbGame__HasError"
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
            jQuery.post("/api/fill_in_the_bait", {wordlist: wordlist, template_id: template_id}, FITB.onGetSuccess, "json");
        })
    },
}

$(document).ready(function () {
    const cont = document.getElementById("js-demo").textContent
    document.getElementById("js-demo").textContent = cont + " I am from fill_in_the_bait.js"
    FITB.register();
});

const FITB =  {
    register: function () {
        const missingFieldClass = "fitbGame__Blank__missing"
        // const formClass = "fitbGame__Form"
        const inputClass = ".fitbGame__Blank"
        const submitClass = ".fitbGame__Submit"
        const errorClass = "fitbGame__HasError"
        const errorMessage = "You need to fill in all the fields!"

        $(submitClass).click((event) => {
            const inputs = $(inputClass)
            inputs.removeClass(missingFieldClass)
            event.preventDefault()
            let error = false;
            const wordlist = inputs
                .map( (idx,input) => {
                    if (input.value === "") {
                        error = true;
                        $(input).addClass(missingFieldClass)
                    }
                    return input.value
                });
            if (error) {
                $(".error").addClass(errorClass).text(errorMessage)
            }
            console.log(wordlist)
        })
    },
}

$(document).ready(function () {
    const cont = document.getElementById("js-demo").textContent
    document.getElementById("js-demo").textContent = cont + " I am from fill_in_the_bait.js"
    FITB.register();
});

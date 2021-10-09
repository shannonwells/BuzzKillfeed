const FITB =  {
    register: function () {
        const formEl = $(".fitbGame__Submit")
            formEl
            .click((event)  => {
                event.preventDefault();
                alert("I submit!")
                console.log(event.data())
            });
    },
}

$(document).ready(function () {
    const cont = document.getElementById("js-demo").textContent
    document.getElementById("js-demo").textContent = cont + " I am from fill_in_the_bait.js"
    FITB.register();
});

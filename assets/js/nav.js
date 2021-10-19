const MobileNav = {
    showMobileMenu: function() {
        $(".menu--mobile--hamburger").addClass("hidden")
        $(".menu--mobile--nav").removeClass("hidden")
        $(".menu--mobile--close").removeClass("hidden")
    },

    hideMobileMenu: function() {
        $(".menu--mobile--hamburger").removeClass("hidden")
        $(".menu--mobile--nav").addClass("hidden")
        $(".menu--mobile--close").addClass("hidden")
    }
}
$(document).ready(function () {
    $(".menu--mobile--hamburger").click(MobileNav.showMobileMenu)
    $(".menu--mobile--close").click(MobileNav.hideMobileMenu)
})


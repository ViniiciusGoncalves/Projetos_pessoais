function mostrarMenu() {
    var menu =  document.getElementById("menu-header")
    var icone = document.getElementById("icone-menu")
    var socialMidia = document.getElementById("social-midia")

    if(menu.style.display == "none") {
        menu.style.display = "flex"
        icone.classList.remove("fa-bars")
        icone.classList.add("fa-times")
            //Mudar para Times
    }
    else {
        menu.style.display = "none"
        icone.classList.add("fa-bars")
        icone.classList.remove("fa-times")
    }
}
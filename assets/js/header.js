document.addEventListener("DOMContentLoaded", function() {

  let boutonHeader = document.querySelector("#bouton-header");
  let menuContenu = document.querySelector(".menu-contenu");

  if(!boutonHeader){
    return;
  }

  boutonHeader.addEventListener("click", function() {
    menuContenu.classList.toggle("menu-ouvert");
  })

  document.addEventListener("click", function(event) {
    if (!menuContenu.contains(event.target) && !boutonHeader.contains(event.target)) {
      menuContenu.classList.remove("menu-ouvert");
    }
  });
});
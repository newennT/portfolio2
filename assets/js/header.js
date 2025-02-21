let boutonHeader = document.querySelector("#bouton-header");
let menuContenu = document.querySelector(".menu-contenu");

console.log(boutonHeader);
console.log(menuContenu);

boutonHeader.addEventListener("click", function() {
  menuContenu.classList.toggle("menu-ouvert");
})
let boutonHeader = document.querySelector("#bouton-header");
let menuContenu = document.querySelector(".menu-contenu");

console.log(boutonHeader);
console.log(menuContenu);

boutonHeader.addEventListener("click", function() {
  console.log("click");
  if (menuContenu.classList.contains("menu-ouvert")){
    console.log("menu caché");
    menuContenu.classList.remove("menu-ouvert");
  } else {
    console.log("menu affiché");
    menuContenu.classList.add("menu-ouvert");
  }
})
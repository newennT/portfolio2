document.addEventListener("DOMContentLoaded", function () {
    const categories = document.querySelector('.categorie-item');
    const projets = gsap.utils.toArray(".projet-item");

    if(!categories && projets){
        projets.forEach((projet) => {
            gsap.from(projet, {
                y: 150,
                opacity: 0,
                duration: 0.8,
                ease: "power2.out",
                scrollTrigger: {
                    trigger: projet,
                    start: "top bottom",
                    toggleActions: "play none none none",
                },
            });
        });
    } else if (categories && !projets){
        gsap.from(".categorie-item", {
                y: 50, 
                opacity: 0, 
                duration: 0.6, 
                ease: "power2.out", 
                stagger: 0.2, 
            });

    } else {
        return;
    }

       



       

        

    
});
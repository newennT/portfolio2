document.addEventListener("DOMContentLoaded", function () {
    gsap.from(".categorie-item", {
        y: 50, 
        opacity: 0, 
        duration: 0.6, 
        ease: "power2.out", 
        stagger: 0.2, 
    });


    
    let projets = gsap.utils.toArray(".projet-item");

    projets.forEach((projet, index) => {
        gsap.from(projet, {
            y: 150,
            opacity: 0,
            duration: 0.8,
            ease: "power2.out",
            delay: index * 0.2,
            scrollTrigger: {
                trigger: projet,
                start: "top 95%",
                toggleActions: "play none none none",
            },
        });
    });
});
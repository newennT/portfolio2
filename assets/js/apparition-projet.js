document.addEventListener("DOMContentLoaded", function () {
    gsap.from(".categorie-item", {
        y: 50, 
        opacity: 0, 
        duration: 0.6, 
        ease: "power2.out", 
        stagger: 0.2, 
    });

    // gsap.from(".projet-item", {
    //     y: 150, 
    //     opacity: 0, 
    //     duration: 1.5, 
    //     ease: "power2.out", 
    //     stagger: 0.5, 
    // });
    // gsap.utils.toArray(".projet-item").forEach((item, index) => {
    //     gsap.from(item, {
    //         y: 150,
    //         opacity: 0,
    //         duration: 1.5,
    //         ease: "power2.out",
    //         scrollTrigger: {
    //             trigger: item,
    //             start: "top 70%",
    //             toggleActions: "play none none reverse"
    //         },
    //     });
    // });

    let projets = gsap.utils.toArray(".projet-item");

    gsap.from(projets, {
        y: 150,
        opacity: 0,
        duration: 1,
        ease: "power2.out",
        stagger: {
            amount: 0.6,
            grid: "auto",
            from: "start",
        },
        scrollTrigger: {
            trigger: ".projets",
            start: "top 75%",
            toggleActions: "play none none reverse",
        }
    })
});
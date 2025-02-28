gsap.registerPlugin(ScrollTrigger);

const tlContact = gsap.timeline({
    scrollTrigger: {
        trigger: ".contact-section01",
        start: "top 20%",
        end: "bottom 5%",
        scrub: 2,
        toggleActions: "play none none reverse"
    }
})

tlContact.to("#mot01", { 
    x: 1700,
    duration: 1, 
    ease: "linear" 
}, 0);

tlContact.to("#mot02", { 
    x: -1000,
    duration: 1, 
    ease: "linear" 
}, 0);

tlContact.to("#mot03", { 
    x: 1000, 
    duration: 1, 
    ease: "linear" 
}, 0);

tlContact.to("#mot04", { 
    x: -2000, 
    duration: 1, 
    ease: "linear" 
}, 0);
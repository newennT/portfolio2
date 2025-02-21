gsap.registerPlugin(ScrollTrigger);

const tlAccueil01 = gsap.timeline({
    scrollTrigger: {
        trigger: ".section02",
        start: "top bottom",
        end: "top top",
        scrub: 2,
        toggleActions: "play none none reverse"
    }
});

tlAccueil01.to("#accueil01", {
    scale: 1.15,
    y: 200,
    duration: 4,
    ease: "power1.inOut"
});

const tlAccueil02 = gsap.timeline({
    scrollTrigger: {
        trigger: ".section02",
        start: "top bottom",
        end: "top top",
        scrub: 2,
        toggleActions: "play none none reverse"
    }
});

tlAccueil02.to("#accueil02", {
    scale: 1.15,
    y: 300,
    duration: 5,
    ease: "power1.out"
});


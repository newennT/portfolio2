gsap.registerPlugin(ScrollTrigger);

document.addEventListener("DOMContentLoaded", function () {
    const horizontalSection = document.querySelector("#horizontal");
    const contents = gsap.utils.toArray("#horizontal .service");

    // Vérification si l'élément #horizontal existe avant d'essayer de l'utiliser
    if (!horizontalSection) {
        return;
    }

    if (contents.length === 0) {
        return;
    }

    // Si l'élément #horizontal existe, alors initialise l'animation GSAP
    ScrollTrigger.matchMedia({
        "(min-width: 568px)": function () {
            gsap.to(contents, {
                xPercent: -100 * (contents.length - 1),
                scrollTrigger: {
                    trigger: "#horizontal",
                    start: "top top",
                    end: () => `+=${horizontalSection.offsetWidth}`,
                    pin: true,
                    scrub: 2,
                }
            });
        },

        // Version Mobile (< 768px) : Animation simple
        "(max-width: 567px)": function () {
            gsap.to(contents, {
                scrollTrigger: {
                    trigger: "#horizontal",
                    start: "top bottom",
                    end: "top top",
                    scrub: 1,
                }
            });
        }
    });
});
document.addEventListener("DOMContentLoaded", function () {

gsap.registerPlugin(ScrollTrigger);

console.log("GSAP:", gsap);
console.log("ScrollTrigger:", ScrollTrigger);

const scrollSection = document.querySelectorAll(".scroll-section");
console.log(scrollSection);

scrollSection.forEach((section) => {
    const wrapper = section.querySelector(".wrapper");
    const items = wrapper.querySelectorAll(".item")
  
  
  let direction = null;
  
    if (section.classList.contains("vertical-section")){
      direction = "vertical";
    } else if (section.classList.contains("horizontal-section")){
      direction = "horizontal";
    }
  
    initScroll(section, items, direction);
  
});


function initScroll(section, items, direction) {
    items.forEach((item, index) => {
      if (index !== 0) {
        if (direction === "horizontal") {
            gsap.set(item, { xPercent: 100 });
        } else {
            gsap.set(item, { yPercent: 100 });
        }
      }
    });
  
    const tl = gsap.timeline({
      scrollTrigger: {
        trigger: section,
        pin: true,
        start: "top 10%",
        end: () => `+=${items.length * 100}%`,
        scrub: 1,
        invalidateOnRefresh: true,
      },
      defaults: { ease: "none"},
    });
    items.forEach((item, index) => {
      tl.to(item, {
        scale: 1.2,
        borderRadius: "10px",
      });
  
      direction === "horizontal"
        ? tl.to(
          items[index + 1],
          {
            xPercent: 0,
          },
          "<"
        )
        : tl.to(
          items[index + 1],
          {
            yPercent: 0,
          },
          "<"
        );
    });
  }
})
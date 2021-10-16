function menu() {
  const menuBtn = document.querySelector(".menu-icon span");
const searchBtn = document.querySelector(".search-icon");
const cancelBtn = document.querySelector(".cancel-icon");
const items = document.querySelector(".nav-items");
const form = document.querySelector("form");
menuBtn.onclick = () => {
  items.classList.add("active");
  menuBtn.classList.add("hide");
  searchBtn.classList.add("hide");
  cancelBtn.classList.add("show");
};
cancelBtn.onclick = () => {
  items.classList.remove("active");
  menuBtn.classList.remove("hide");
  searchBtn.classList.remove("hide");
  cancelBtn.classList.remove("show");
  form.classList.remove("active");
  cancelBtn.style.color = "#ff3d00";
};
searchBtn.onclick = () => {
  form.classList.add("active");
  searchBtn.classList.add("hide");
  cancelBtn.classList.add("show");
};
}

$(document).ready(function () {
  menu();
});


const card = document.querySelector(".card_inner");
const card1 = document.querySelector(".card_inner1");
const card2 = document.querySelector(".card_inner2");
const card3 = document.querySelector(".card_inner3");
const card4 = document.querySelector(".card_inner4");
const card5 = document.querySelector(".card_inner5");
const card6 = document.querySelector(".card_inner6");
const card7 = document.querySelector(".card_inner7");

card.addEventListener("click", function (e) {
  card.classList.toggle("is-flipped");
});

card1.addEventListener("click", function (e) {
  card1.classList.toggle("is-flipped");
});

card2.addEventListener("click", function (e) {
  card2.classList.toggle("is-flipped");
});

card3.addEventListener("click", function (e) {
  card3.classList.toggle("is-flipped");
});

card4.addEventListener("click", function (e) {
  card4.classList.toggle("is-flipped");
});

card5.addEventListener("click", function (e) {
  card5.classList.toggle("is-flipped");
});

card6.addEventListener("click", function (e) {
  card6.classList.toggle("is-flipped");
});

card7.addEventListener("click", function (e) {
  card7.classList.toggle("is-flipped");
});

//   all ------------------
function initParadoxWay() {
  "use strict";

  if ($(".testimonials-carousel").length > 0) {
    var j2 = new Swiper(".testimonials-carousel .swiper-container", {
      preloadImages: false,
      slidesPerView: 1,
      spaceBetween: 20,
      loop: true,
      grabCursor: true,
      mousewheel: false,
      centeredSlides: true,
      pagination: {
        el: ".tc-pagination",
        clickable: true,
        dynamicBullets: true,
      },
      navigation: {
        nextEl: ".listing-carousel-button-next",
        prevEl: ".listing-carousel-button-prev",
      },
      breakpoints: {
        1024: {
          slidesPerView: 3,
        },
      },
    });
  }

  // bubbles -----------------

  setInterval(function () {
    var size = randomValue(sArray);
    $(".bubbles").append(
      '<div class="individual-bubble" style="left: ' +
        randomValue(bArray) +
        "px; width: " +
        size +
        "px; height:" +
        size +
        'px;"></div>'
    );
    $(".individual-bubble").animate(
      {
        bottom: "100%",
        opacity: "-=0.7",
      },
      4000,
      function () {
        $(this).remove();
      }
    );
  }, 350);
}

//   Init All ------------------
$(document).ready(function () {
  initParadoxWay();
});

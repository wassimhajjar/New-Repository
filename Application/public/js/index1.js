const btnEl = document.querySelector(".btn");

const closeiconEl = document.querySelector(".close-icon");

const firstcontainerEl = document.querySelector(".first-container");

const secondcontainerEl = document.querySelector(".second-container");

const popupbtnEl = document.querySelector(".popup-btn");

const inputEl1 = document.querySelector(".input");

const openEl = document.querySelector(".open");

btnEl.addEventListener("click", () => {
    firstcontainerEl.classList.add("active");
    openEl.classList.add("active");
    secondcontainerEl.classList.remove("active");
})

closeiconEl.addEventListener("click", () => {
    openEl.classList.remove("active");
    firstcontainerEl.classList.remove("active");
    secondcontainerEl.classList.add("active");

})




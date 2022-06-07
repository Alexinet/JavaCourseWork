document
  .querySelector("#burger")
  .addEventListener("click", () => {
    document.querySelector("#nav").classList.toggle("active");
  });
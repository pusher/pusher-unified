module.exports.start = () => {
  document.addEventListener("turbolinks:load", () => {
    const modalButtons = [].slice.call(
      document.querySelectorAll(".modal-button-toggle")
    );

    if (modalButtons.length > 0) {
      modalButtons.forEach(modalButton => {
        modalButton.addEventListener("click", e => {
          e.preventDefault();
          const modal = document.getElementById(modalButton.dataset.modalId);
          modal.classList.toggle("active");
          document.body.classList.toggle("overflow-hidden");
          modal.setAttribute(
            "aria-hidden",
            !modal.classList.contains("active")
          );
          modal.querySelectorAll("input, button")[0].focus();
        });
      });
    }
  });
};

const toggleCSSclasses = (el, ...classes) =>
  classes.map(cl => el.classList.toggle(cl));

module.exports.start = () => {
  document.addEventListener("DOMContentLoaded", () => {
    const modalButtons = [].slice.call(
      document.querySelectorAll(".modal-button-toggle")
    );

    if (modalButtons.length > 0) {
      modalButtons.forEach(modalButton => {
        modalButton.addEventListener("click", e => {
          const modal = document.getElementById(modalButton.dataset.modalId);
          modal.classList.toggle("active");
          document.body.classList.toggle("overflow-hidden");
          modal.setAttribute(
            "aria-hidden",
            !modal.classList.contains("active")
          );
        });
      });
    }
  });
};

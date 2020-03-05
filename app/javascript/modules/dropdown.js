const toggleCSSclasses = (el, ...classes) =>
  classes.map(cl => el.classList.toggle(cl));

module.exports.start = () => {
  document.addEventListener("DOMContentLoaded", () => {
    const toggleWraps = [].slice.call(
      document.querySelectorAll(".dropdown-toggle-wrap")
    );

    if (toggleWraps.length > 0) {
      toggleWraps.forEach(toggleWrap => {
        const [toggle] = [].slice.call(
          toggleWrap.querySelectorAll(".dropdown-toggle")
        );
        const [dropdown] = [].slice.call(
          toggleWrap.querySelectorAll(".dropdown")
        );

        toggle.addEventListener("click", e => {
          dropdown.classList.toggle("active");
          toggleCSSclasses(
            e.target,
            "hover-bg-snow-dark",
            "hover-b--snow-dark",
            "bg-snow-dark",
            "b--snow-dark"
          );
        });
      });
    }
  });
};

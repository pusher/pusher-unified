const toggleCSSclasses = (el, ...classes) =>
  classes.map(cl => el.classList.toggle(cl));

module.exports.start = () => {
  document.addEventListener("turbolinks:load", () => {
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
          dropdown.setAttribute(
            "aria-expanded",
            dropdown.classList.contains("active")
          );
          toggleCSSclasses(
            e.target,
            "hover-bg-snow-dark",
            "hover-b--snow-dark",
            "bg-snow-dark",
            "b--snow-dark"
          );
        });

        toggle.addEventListener("mouseover", function(e) {
          dropdown.setAttribute("aria-expanded", "true");
        });
        toggle.addEventListener("mouseout", function(e) {
          dropdown.setAttribute("aria-expanded", "false");
        });
      });
    }
  });
};

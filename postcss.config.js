module.exports = {
  plugins: [
    require("postcss-import"),
    require("postcss-nested"),
    require("postcss-each"),
    require("postcss-colour-functions"),
    require("postcss-flexbugs-fixes"),
    require("postcss-custom-media"),
    require("postcss-preset-env")({
      autoprefixer: {
        flexbox: "no-2009"
      },
      stage: 3
    })
  ]
};

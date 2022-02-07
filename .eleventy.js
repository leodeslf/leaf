const syntaxHighlight = require("@11ty/eleventy-plugin-syntaxhighlight");

module.exports = function (eleventyConfig) {
  eleventyConfig.setQuietMode(true);
  eleventyConfig.setTemplateFormats("md,njk,css");
  eleventyConfig.addPassthroughCopy("favicon.ico");
  eleventyConfig.addPlugin(syntaxHighlight);
  return {
    dir: {
      input: 'prebuild',
      output: 'build'
    }
  };
}

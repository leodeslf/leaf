const syntaxHighlight = require("@11ty/eleventy-plugin-syntaxhighlight");

module.exports = function (eleventyConfig) {
  eleventyConfig.setQuietMode(true);
  eleventyConfig.addPassthroughCopy("favicon.ico");
  eleventyConfig.setTemplateFormats("md,njk,css");
  eleventyConfig.addPlugin(syntaxHighlight);
  return {
    dir: {
      output: 'docs' // Folder for GitHub Pages.
    }
  };
}

module.exports = function (eleventyConfig) {
  eleventyConfig.setQuietMode(true);
  eleventyConfig.addPassthroughCopy("style.css");
  eleventyConfig.addPassthroughCopy("favicon.ico");
  eleventyConfig.setTemplateFormats("md,njk,css");
  return {
    dir: {
      output: 'docs' // Folder for GitHub Pages.
    }
  };
}

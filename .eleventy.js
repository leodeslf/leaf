const syntaxHighlight = require('@11ty/eleventy-plugin-syntaxhighlight');
/* const markdownIt = require('markdown-it');
const markdownItAnchor = require('markdown-it-anchor');
const toc = require('eleventy-plugin-toc'); */

module.exports = function (eleventyConfig) {
  eleventyConfig.setQuietMode(true);
  eleventyConfig.setTemplateFormats('md,njk,css');
  eleventyConfig.addPassthroughCopy('favicon.ico');
  eleventyConfig.addPlugin(syntaxHighlight);
  /* eleventyConfig.addPlugin(
    toc,
    {
      tags: ['h3', 'h4', 'h5', 'h6']
    }
  );
  eleventyConfig.setLibrary('md', markdownIt().use(markdownItAnchor)); */
  return {
    dir: {
      input: 'prebuild',
      output: 'build'
    }
  };
}

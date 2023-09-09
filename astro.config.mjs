import { defineConfig } from 'astro/config';
import vercel from '@astrojs/vercel/static';
import sitemap from "@astrojs/sitemap";

// https://astro.build/config
export default defineConfig({
  adapter: vercel(),
  output: 'static',
  integrations: [sitemap()],
  markdown: {
    // gfm: false,
    // smartypants: false,
    syntaxHighlight: 'prism'
  },
  site: 'https://docs-and-notes.vercel.app'
});

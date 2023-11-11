import { defineConfig } from 'astro/config';
import sitemap from "@astrojs/sitemap";
import vercel from '@astrojs/vercel/static';

// https://astro.build/config
export default defineConfig({
  adapter: vercel({
    speedInsights: {
      enabled: true,
    },
    webAnalytics: {
      enabled: true,
    },
  }),
  output: 'static',
  integrations: [sitemap()],
  markdown: {
    // gfm: false,
    // smartypants: false,
    syntaxHighlight: 'prism'
  },
  site: 'https://docs-and-notes.vercel.app'
});

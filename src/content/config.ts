import { defineCollection, z } from 'astro:content';

const docs = defineCollection({
  schema: z.object({
    title: z.string().optional()
  }),
});
const notes = structuredClone(docs);

export { docs, notes };

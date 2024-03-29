import { createRouter, createWebHistory } from 'vue-router'
import MoviesView from "../views/MoviesView.vue"

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
      {
          path: '/',
          name: 'movies',
          component: MoviesView
      },
  ]
})

export default router

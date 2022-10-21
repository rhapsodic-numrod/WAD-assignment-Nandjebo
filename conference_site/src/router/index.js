import { createRouter, createWebHistory } from "vue-router";
import HomeView from "../views/researcher/HomeView.vue";

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
      // Login and register views
    {
      path: "/login",
      name: "login",
      component: () => import("../views/LoginView.vue")
    },
    {
      path: "/register",
      name: "register",
      component: () => import("../views/RegisterView.vue")
    },
      // Researcher/Visitor Pages
    {
      path: "/",
      name: "home",
      component: HomeView,
    },
    {
      path: "/events",
      name: "events",
      component: () => import("../views/researcher/EventsView.vue")
    },
    {
      path: "/papers",
      name: "papers",
      component: () => import("../views/researcher/PapersView.vue")
    },
    {
      path: "/contact",
      name: "contact",
      component: () => import("../views/researcher/ContactView.vue")
    },
    {
      path: "/about",
      name: "about",
      component: () => import("../views/researcher/AboutView.vue"),
    },
    {
      path: "/papers/paper/:paperId",
      name: "view-paper",
      component: () => import("../views/researcher/ViewPaper.vue")
    },
    {
      path: "/events/event/:eventId",
      name: "view-event",
      component: () => import("../views/researcher/ViewEvent.vue")
    },
    // Chair Routes
    {
        path: "/chair/pending-papers",
        name: "pending-papers",
        component: () => import("../views/chair/PendingPapersView.vue")
    },
    {
      path: "/chair/reviews",
      name: "reviews",
      component: () => import("../views/chair/ReviewsView.vue")
    },
    {
      path: "/chair/submit-article",
      name: "submit-article",
      component: () => import("../views/chair/SubmitArticleView.vue")
    }
  ],
});

export default router;

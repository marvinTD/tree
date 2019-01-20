import Vue from 'vue';
import Router from 'vue-router';
import Meta from 'vue-meta';
import Tree from '@/components/Tree.vue';
import Branch from '@/components/Branch.vue';
import Leaf from '@/components/Leaf.vue';
import Hello from '@/components/HelloWorld.vue';
import NotFound from '@/components/NotFound';

Vue.use(Router);
Vue.use(Meta);

export default new Router({
  routes: [
    {
      path: '/',
      name: 'tree',
      component: Tree,
      meta: {
        title: 'Tree',
      },
    },
    {
      path: '/hello',
      name: 'hello-world',
      component: Hello,
    },
    {
      path: '/b/:branch',
      name: 'branch',
      component: Branch,
      props: true,
      children: [
        {
          path: 'l/:leaf',
          name: 'leaf',
          component: Leaf,
          props: true,
        },
      ],
    },
    { path: '/404', component: NotFound },
    { path: '*', redirect: '/404' },
  ],
});

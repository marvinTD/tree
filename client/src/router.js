import Vue from 'vue';
import Router from 'vue-router';
import Tree from '@/components/Tree.vue'
import Branch from '@/components/Branch.vue'
import Leaf from '@/components/Leaf.vue'
import Hello from '@/components/HelloWorld.vue'

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: '/',
      name: 'tree',
      component: Tree,
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
  ],
});

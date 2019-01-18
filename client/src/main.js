import Vue from 'vue'
import App from './App.vue'
import router from './router.js'
// import store from './store';

import Vuetify from 'vuetify'
import './plugins/vuetify'
import 'vuetify/dist/vuetify.min.css'

Vue.config.productionTip = false

Vue.use(Vuetify, {
  theme: {
      primary: '#63b77b',
      error: '#c12222',
  }
})

new Vue({
  router,
  // store
  render: h => h(App),
}).$mount('#app')

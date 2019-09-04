import Vue from 'vue';
import VueApollo from 'vue-apollo';
import SuiVue from 'semantic-ui-vue';

import App from './App.vue';
import router from './router';
import store from './store/store';
import apolloClient from './apolloClient';

Vue.config.productionTip = false;

Vue.use(VueApollo);
Vue.use(SuiVue);

const apolloProvider = new VueApollo({
  defaultClient: apolloClient,
});

new Vue({
  router,
  store,
  apolloProvider,
  render: h => h(App),
}).$mount('#app');

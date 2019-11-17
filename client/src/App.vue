<template>
  <div id="app">
    <app-navbar />
    <router-view />
  </div>
</template>

<script>
import Navbar from './components/Navbar.vue';

export default {
  name: 'App',
  components: {
    appNavbar: Navbar,
  },
};
</script>

<style lang="scss">
body {
  background: #f0f0f0;
}
</style>

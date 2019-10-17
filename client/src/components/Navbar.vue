<template>
  <div>
    <b-navbar>
      <b-navbar-brand href="/">
        <i class="fas fa-dungeon"></i> Raid Scheduler
      </b-navbar-brand>

      <b-collapse id="nav-collapse" is-nav>
        <b-navbar-nav class="ml-auto">
          <b-button to="/login" variant="primary">Login</b-button>
        </b-navbar-nav>
      </b-collapse>
    </b-navbar>
  </div>
</template>

<script>
export default {
  name: 'Navbar',
};
</script>

<style lang="scss" scoped>

</style>

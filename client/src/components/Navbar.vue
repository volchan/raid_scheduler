<template>
  <div>
    <b-navbar variant="light shadow-sm">
      <b-navbar-brand href="/">
        <i class="fas fa-dungeon"></i> Raid Scheduler
      </b-navbar-brand>

      <b-collapse id="nav-collapse" is-nav>
        <b-navbar-nav class="ml-auto">
          <b-button to="/signup" variant="primary">Sign Up</b-button>
          &nbsp;
          <b-button to="/login" variant="primary">Log in</b-button>
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

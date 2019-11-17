<template>
  <div class="container">
    <div class="row">
      <div class="col-sm-6 offset-sm-3">
        <h2>Login</h2>
        <b-form @submit="onSubmit">
          <b-form-group id="input-group-1" label="Login:" label-for="input-1">
            <b-form-input
              id="input-1"
              v-model="form.login"
              type="login"
              required
              placeholder="Username or Email."
            ></b-form-input>
          </b-form-group>

          <b-form-group id="input-group-2" label="Password:" label-for="input-2">
            <b-form-input
              id="input-2"
              v-model="form.password"
              type="password"
              required
              placeholder="Enter your Password."
            ></b-form-input>
          </b-form-group>

          <b-button type="submit" variant="primary">Login</b-button>&nbsp;
          <b-link to="/signup">Sign Up</b-link>
        </b-form>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      form: {
        login: '',
        password: '',
      },
    };
  },
  methods: {
    onSubmit(evt) {
      evt.preventDefault();
    },
  },
};
</script>

<style lang="scss" scoped>
.container {
  margin-top: 20px;
  .col-sm-6 {
    background: #fff;
    border-radius: 5px;
    border: 1px solid rgba(#000, 0.25);
    padding: 10px;
  }
}
</style>

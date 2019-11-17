<template>
  <div class="container">
    <div class="row">
      <div class="col-sm-6 offset-sm-3">
        <h2>Sign Up</h2>
        <b-form @submit="onSubmit">
          <b-form-group id="input-group-1" label="Login:" label-for="input-1">
            <b-form-input
              id="input-1"
              v-model="form.email"
              type="email"
              required
              placeholder="Enter your Email."
            ></b-form-input>
          </b-form-group>

          <b-form-group id="input-group-2" label="Login:" label-for="input-2">
            <b-form-input
              id="input-2"
              v-model="form.usermane"
              type="usermane"
              required
              placeholder="Enter your Username."
            ></b-form-input>
          </b-form-group>

          <b-form-group id="input-group-3" label="Password:" label-for="input-3">
            <b-form-input
              id="input-3"
              v-model="form.password"
              type="password"
              required
              placeholder="Enter your Password."
            ></b-form-input>
          </b-form-group>

          <b-button type="submit" variant="primary">Sign Up</b-button>&nbsp;
          <b-link to="/login">Cancel</b-link>
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
        email: '',
        username: '',
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

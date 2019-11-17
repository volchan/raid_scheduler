<template>
  <div class="container">
    <div class="row">
      <div class="col-sm-6 offset-sm-3">
        <h2>Login</h2>
        <b-form @submit.stop.prevent="login" :novalidate="true">
          <b-form-group id="input-group-1" label="Login:" label-for="input-1">
            <b-form-input
              id="input-1"
              v-model="form.login"
              required
              placeholder="Username or Email."
              :class="{'is-invalid': $v.$error}"
            ></b-form-input>
          </b-form-group>

          <b-form-group id="input-group-2" label="Password:" label-for="input-2">
            <b-form-input
              id="input-2"
              v-model="form.password"
              type="password"
              required
              placeholder="Enter your Password."
              :class="{'is-invalid': $v.$error}"
            ></b-form-input>
          </b-form-group>
          <p v-if="badCreds" class="text-danger text-center">{{ errorMessage }}</p>
          <b-button type="submit" variant="primary">Login</b-button>&nbsp;
          <b-link to="/signup">Sign Up</b-link>
        </b-form>
      </div>
    </div>
  </div>
</template>

<script>
import { validationMixin } from 'vuelidate';
import { required, email } from 'vuelidate/lib/validators';

import { LOGIN } from '@/graphql/mutations';

export default {
  mixins: [validationMixin],
  data() {
    return {
      form: {
        login: '',
        password: '',
      },
      badCreds: false,
      errorMessage: '',
    };
  },
  validations: {
    form: {
      login: {
        required,
      },
      password: {
        required,
      },
    }
  },
  methods: {
    async login() {
      this.$v.$touch();
      const { data: { loginUser } } = await this.$apollo
        .mutate({
          mutation: LOGIN,
          variables: {
            login: this.form.login,
            password: this.form.password,
          },
        }).catch((error) => {
          this.badCreds = true;
          if (error.message === 'bad credentials') {
            this.errorMessage = 'Wrong credentials.';
            return;
          }
          this.errorMessage = 'An unexpected error occured.';
        });

      if (!loginUser) {
        this.badCreds = true;
        this.errorMessage = 'Wrong credentials.';
        return;
      }

      localStorage.setItem('raid-scheduler-token', loginUser.user.token);
      this.$router.push('/')
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

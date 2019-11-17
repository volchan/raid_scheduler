import gql from 'graphql-tag';

export const LOGIN = gql`
  mutation LOGIN($login: String!, $password: String!) {
    loginUser(login: $login, password: $password) {
      user {
        id
        username
        email
        token
      }
    }
  }
`;

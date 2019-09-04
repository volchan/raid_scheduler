// Config file for Apollo GraphQL VSCode plugin
// https://marketplace.visualstudio.com/items?itemName=apollographql.vscode-apollo
module.exports = {
  client: {
    service: {
      name: 'raid-scheduler',
      // URL to the GraphQL API
      url: 'http://localhost:3000/graphql',
    },
    // Files processed by the extension
    includes: ['src/**/*.vue', 'src/**/*.js'],
  },
};

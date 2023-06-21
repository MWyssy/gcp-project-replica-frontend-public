# Northcoders Learners Frontend

This is the frontend for adding/editing/deleting learners from our system.

## Running the app

The instructions assume you have Node and NPM installed

Instructions have been tested against Node version `v18.12.1`

To run the application use the command

```
npm install
```

followed by:

```
npm start
```

## Running the tests

Tests are handled by Vitest. We (Cloud engineering team) have created one _very_ simple test to check that the pipeline functions as it should. This means that tests can now be added in, and will be automatically run as part of the deployment pipeline upon pushing to the main branch.

To run tests locally, use `npm test`.

While it is not recommended to push to the main branch while any of your tests are failing, the pipeline is set up so that if tests fail, the new version will not be deployed and hosted.

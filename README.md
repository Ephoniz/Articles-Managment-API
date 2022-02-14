
Developing a REST API application followed by https://jsonapi.org standard for API communication.

Features:

- Listing recent Articles.
- Previewing the article's details.
- Logging in using login/password flow.
- Registering user using login/password flow.
- OAUTH integration with Github.
- Managing own articles (Create/Update/Destroy).
- Creating comments to articles.
- Token-based authorization.
- Access management check.
- TDD implementation.

(Used TDD and Postman to verifies each request of the application)

Gems used: 

- Bcrypt : for password encryption.
- Octokit : for github authentication
- Kaminari : for pagination support
- Rspec & Factory_bot : for testing
- Active-model-serializer : manage and improve json responses

# SampleUserAPI

SampleUserAPI is a simple RESTful API built with Node.js and Express. It provides basic CRUD operations for managing user data.


## Installation

1. Clone the repository:

```bash
    git clone https://github.com/sumit-debnath/SampleUserAPI.git
```

2. Navigate to the project directory:

```bash
    cd SampleUserAPI
```
3. Install the dependencies:

```bash
    npm install
```
## Usage

1. Start the server:
```bash
    node server.js
```
The API will be available at http://localhost:3000.

2. Use a tool like cURL or Postman to interact with the API endpoints.## API Endpoints

The following endpoints are available:

* **`GET /users`**: Get a list of all users.
* **`GET /users/:id`**: Get a specific user by ID.
* **`POST /users`**: Create a new user.
* **`PUT /users/:id`**: Update an existing user by ID.
* **`DELETE /users/:id`**: Delete a user by ID.

## Request/Response Examples

#### Get all users

```http
  GET /users
```

#### Create a user

```http
  POST /users
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `name`    | `string` |                                   |

#### Update a user

```http
  PUT /users/${id}
```

|Parameter  | Type     | Description                        |
| :-------- | :------- | :--------------------------------  |
| `id`      | `string` | **Required**. Id of user to update |
| `name`    | `string` |                                    |

#### Delete a user

```http
 DELETE /users/3
```
| Parameter | Type     | Description                        |
| :-------- | :------- | :--------------------------------  |
| `id`      | `string` | **Required**. Id of user to Delete |



## Contributing

Contributions are welcome! If you have any suggestions, improvements, or bug fixes, please submit a pull request.

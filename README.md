# Wingman Postgres

This project contains a Dockerized PostgreSQL setup, which includes a custom initialization script to set up a database with predefined tables and data.

## Overview

The Docker setup uses the official `postgres:13-alpine` image and includes an `init.sql` script to initialize the database with specific tables and data. This setup is ideal for development and testing environments.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

To get started with this project, follow these steps:

1. **Clone the Repository**

   Clone this repository to your local machine to get started.

   ```bash
   git clone [repository-url]
   ```

1. **Navigate to the Project Directory**

   Change to the project directory where the docker-compose.yml and Dockerfile are located.

   ```bash
   cd [project-directory]
   ```

1. **Build the Docker Image**

   Build the custom Docker image using the provided Dockerfile.

   ```bash
   docker build -t yourusername/yourimagename:tag .
   ```

   Replace `yourusername`, `yourimagename`, and `tag` with your DockerHub username, the desired image name, and your chosen tag, respectively.

1. **Run Docker Compose**

   Start the Docker Compose to run your PostgreSQL container.

   ```bash
   docker-compose up -d
   ```

## Configuration

The docker-compose.yml file contains the configuration for the Docker setup. You can modify the environment variables as needed:

- `POSTGRES_DB`: The default database name (default: `devdb`).
- `POSTGRES_USER`: The default user (default: `devuser`).
- `POSTGRES_PASSWORD`: The password for the default user (default: `changeme`).

## Initialization Script

The `init.sql` script is executed when the PostgreSQL container is first started. It initializes the database with predefined tables and data.

## Customization

You can customize the `init.sql` script to include your own schema and data as per your requirements.

## Contributing

Contributions to this project are welcome. Please ensure that your code adheres to the project standards and submit a pull request for review.

## License

This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for more details.

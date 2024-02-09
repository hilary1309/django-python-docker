# Docker - Dockerizing a django application

This a simple Django application using Docker

## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install the necessary dependencies. Or you can pull the docker container from [docker hub](https://hub.docker.com/r/hilary139/python-django-core/)

## Usage

```bash
pip install -r requirements.txt
```

## Docker Commands Used

```bash
# Build a Docker image
$ docker build -t nest-auth-app:1.0 .

# Run the Docker Image
$ docker run -p 3000:3000 nest-auth-app:1.0

```

## Stay in touch

- Author - [Aghasili Hilary](www.linkedin.com/in/hilary-aghasili-63b389199)

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

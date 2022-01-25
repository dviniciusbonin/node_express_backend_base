
# node-express backend base

This project is a backend model with node and express. Using containerization with build, development, and production stages

## Author

- [Douglas Vinicius Caldas Bonin](https://www.github.com/DViniciusBonin)




[![MIT License](https://img.shields.io/apm/l/atomic-design-ui.svg?)](https://github.com/tterb/atomic-design-ui/blob/master/LICENSEs)
## Installation

Clone the repository
```bash
    git clone my-project
```


    
## Environment variables

To run this one, you will clarify the following environment variables in your file

`PORT`



## Deploy

To deploy this project, run in root directory

#### Production
```bash
  docker-compose up prod -d
```

#### Development
```bash
  docker-compose up dev
```

#### All environments
```bash
    docker-compose up -d
```

## Stack


    Node, Express, Typescript


## API Documentation

#### Return Hello World!
```http
  GET /
```


# FileAgent Dockerimage

## About

This repository is part of the SAND5G project, which aims to enhance security in 5G networks. FileAgent is a tool designed to facilitate the management of Snort rules in a containerized environment.

5G -and beyond- networks provide a strong foundation for EU’s digital transformation and are becoming one of the Union’s key assets to compete in the global market.

Securing 5G networks and the services running on top of them requires high quality technical security solutions and also strong collaboration at the operational level.

https://sand5g-project.eu

![SAND5G](https://sand5g-project.eu/wp-content/uploads/2024/06/SAND5G-logo-600x137.png)

## Overview

[FileAgent python package pypi repository](https://pypi.org/project/fileagent/)
[FileAgent python package github repository](https://github.com/ISSG-UPAT/FileAgent-SAND5G)

## Functionality

### Variables

| Variable  | Required | Default Values | Description                                  |
| --------- | -------- | -------------- | -------------------------------------------- |
| PORT      | OPTIONAL | 8000           | The port on which the FileAgent will run.    |
| HOST      | OPTIONAL | "0.0.0.0"      | The host on which the FileAgent will run.    |
| DIRECTORY | OPTIONAL | <>             | The directory to be monitored.               |
|           |          |                | Defaults to the parent directory of the file |
| FILE      | YES      |                | The file to be monitored.                    |

### Docker compose

```yaml
services:
  fileagent:
    image: issgupat/fileagent-docker-sand5g:latest
    environment:
      - PORT=8000
      - HOST="0.0.0.0"
      - FILE=<name of your file>
      - DIRECTORY=/app/custom
    hostname: fileagent
    network_mode: "host"
    ports:
      - "8000:8000"
    volumes:
      - custom_data:/app/custom

volumes:
  custom_data:
    driver: local
    driver_opts:
      type: none
      o: bind
      device: /path/to/your/custom
```

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes

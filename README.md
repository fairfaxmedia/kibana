# Kibana

An opinionated Docker implementation for Kibana based on the upstream official image.

<!-- TOC depthFrom:2 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Features](#features)
- [Getting Started](#getting-started)
	- [Prerequisites](#prerequisites)
	- [Installing](#installing)
	- [Environmental Variables](#environmental-variables)
- [Deployment](#deployment)
- [Components](#components)
- [Contributing](#contributing)
- [Versioning](#versioning)
- [Authors](#authors)
- [License](#license)
- [Acknowledgments](#acknowledgments)

<!-- /TOC -->

## Features

There is currently only one difference between this implementation and the upstream image.

* Enables Prometheus plugin for metrics.

## Getting Started

This implementation is designed to be used with a Helm chart. However, there is a docker compose file included for testing this implementation locally. Bringing up a test cluster and discovering the client endpoint is easily done with just 2 commands.

```
docker-compose up
```

It will likely take a few minutes for the containers to start and you can verify when it is available using `curl`.

```
curl $(docker-compose port kibana 5601)
```

### Prerequisites

The only requirements for bringing up this implementation locally is Docker.

```
Docker 17.12.0+
```

### Installing

It is expected that the Helm chart will be used to install this container. For local development, there are a number of ways to interact with Kibana.

The Kibana endpoint is the main way applications interact with Kibana.

```
docker-compose port kibana 5601
```

The Elasticsearch endpoint can be found with the following command.

```
docker-compose port elasticsearch 9200
```

### Environmental Variables

See the [official documentation](https://www.elastic.co/guide/en/kibana/current/docker.html) for Kibana running in Docker.

## Deployment

For use on live systems, see the documentation for the Helm chart.

## Components

* [Elasticsearch](https://github.com/elastic/elasticsearch) - Open Source, Distributed, RESTful Search Engine
* [Elasticsearch-Docker](https://github.com/elastic/elasticsearch-docker/tree/6.5) - Official Elasticsearch Docker image from Elastic.
* [Kibana](https://github.com/elastic/kibana) - Kibana analytics and search dashboard for Elasticsearch
* [Kibana-Docker](https://github.com/elastic/kibana-docker/tree/6.5) - Official Kibana Docker image from Elastic.
* [Kibana Prometheus Exporter](https://github.com/pjhampton/kibana-prometheus-exporter) - A Kibana plugin that exposes metrics in the Prometheus format.

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/fairfaxmedia/elasticsearch/tags).

## Authors

* **Michael Lorant** - *Initial work* - [Nine](https://github.com/mikelorant)

See also the list of [contributors](https://github.com/mikelorant/kibana/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Elastic
* Nine

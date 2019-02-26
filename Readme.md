# docker/apache2 Precedence Issue Demonstration Cookbook.

Applies to docker cookbook: 4.9.2

Applies to apache2 cookbook: 5.2.2 - 6.0.0

This repository is a concrete demonstration of the issues encountered between the docker and apache2 cookbooks in Chef.

Both cookbooks have a `libexec_dir` function defined that is either improperly scoped at definition or is improperly scoped at execution.  When the apache2 cookbook is compiled after the docker cookbook it overwrites the docker cookbook's `libexec_dir` which causes it to write an invalid path to a docker configuration file, breaking the docker service.

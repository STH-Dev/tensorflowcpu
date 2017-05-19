# tensorflowcpu
Tensorflow Compiled for CPU in Docker

This Dockerfile installs the basic container requirements for optimizing a TF build for CPUs.

Using this allows for one to minimize dependency downloads during TF Docker image development.

Note: As of TF 1.0, the default TensorFlow CPU build is made to be compatible but does not take advantage of any modern CPU features.

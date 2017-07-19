# Outrigger Generator

> Docker Image with Yeoman generators for Outrigger-enabled application development.

[![](https://images.microbadger.com/badges/version/outrigger/generator.svg)](https://microbadger.com/images/outrigger/generator "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/outrigger/generator.svg)](https://microbadger.com/images/outrigger/generator "Get your own image badge on microbadger.com")

This Docker image contains primary Yeoman generators used by the Outrigger community.

* [Outrigger Drupal](https://github.com/phase2/generator-outrigger-drupal) (Best practices for Drupal projects, including Outrigger-based development.)
* [Generator Pattern Lab Starter](https://github.com/phase2/generator-pattern-lab-starter) (A Drupal theme for best-of-breed frontend practices.)
* [Generator Gadget](https://github.com/phase2/generator-gadget) (A Drupal scaffolding generator for Drupal setup with [grunt-drupal-tasks](https://github.com/phase2/grunt-drupal-tasks.)

This project is built on [outrigger/yeoman](https://hub.docker.com/r/outrigger/yeoman), a Docker image which facilitates running Yeoman generators in Docker containers.

## Usage

### Recommended Usage

If you are an Outrigger user, this project is what powers the [`rig project create` command](http://docs.outrigger.sh/project-setup/new-projects/).

### Direct Usage

#### Run the [Outrigger Drupal](https://github.com/phase2/generator-outrigger-drupal) generator.

```
mkdir ~/PROJECT-NAME
cd ~/PROJECT-NAME
docker run -it --rm -v $PWD:/generated outrigger/generator
```

#### Run with Generator Arguments

To add additional arguments you must also specify the name of the generator you want to run:

```
docker run -it --rm -v $PWD:/generated outrigger/generator gadget "[Arg1, Arg2, ..]"
```

#### Running `yo` directly to select a generator

To see the main Yeoman prompt specify an empty generator name:

```
docker run -it --rm -v $PWD:/generated outrigger/generator ""
```

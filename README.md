# Yeoman generator for Outrigger

This container can be used to run the phase2/generator-outrigger yeoman generator.

To run:

```
mkdir ~/PROJECT-NAME
cd ~/PROJECT-NAME
docker run -it -v "$(pwd):/generated" --rm
```

To add additional arguments you must also specify the name of the generator you want to run:

```
docker run -it -v "$(pwd):/generated" --rm gadget ARGUMENTS
```

To see the main Yeoman prompt, specify an empty generator name:

```
docker run -it -v "$(pwd):/generated" --rm ""
```

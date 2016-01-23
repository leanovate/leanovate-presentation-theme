# Hugo theme for leanovate presentations

This is a simple hugo theme to create presentations using:

* [Hugo](https://gohugo.io)
* [Slidy2](https://gohugo.io)
* [fit.js](http://soulwire.github.io/fit.js/)
* ... and one or two dirty tricks

## Getting started using Docker

The easiest way to setup a new project is by using a docker image containing all the required tools you will need.

1. Open a terminal
2. Create a new directory somewhere and go to it: 

  ``` bash 
  mkdir mypresentations
  cd mypresentations
  ```
3. Perform an initial bootstrap:

  ``` bash
  docker run --rm -v $PWD:/project leanovate/presentations bootstrap
  ```

You now have a working project directory without any presentations.

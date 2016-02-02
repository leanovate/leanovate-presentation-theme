# Hugo theme for leanovate presentations

This is a simple hugo theme to create presentations using:

* [Hugo](https://gohugo.io)
* [Slidy2](https://gohugo.io)
* [fit.js](http://soulwire.github.io/fit.js/)
* ... and one or two dirty tricks

## Getting started 

### Using Docker

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

### Do it yourself

1. Install [Hugo](https://gohugo.io) as described on its homepage
2. Optional: Install [Pygments](http://pygments.org/) (highly recomented if you have presentations with code example/sniplets
3. Optional: Install [asciidoc](http://www.methods.co.nz/asciidoc/) or [Asciidocktor](http://asciidoctor.org/) if you prefer asciidoc over markdown
4. Create a new project using hugo:

   ``` bash
   hugo new site mypresentations
   cd mypresentations
   ```
5. Install theme:

   ``` bash
   cd themes
   git clone https://github.com/leanovate/leanovate-presentation-theme.git
   cd ..
   ```
6. Add the following lines to your `config.toml`

   ```
   theme = "leanovate-presentation-theme"
   pygmentsstyle = "colorful"
   relativeurls = true
   uglyurls = true
   [taxonomies]
     presentation = "presentations"
   ```
   (the url settings are recomented if you want to run you presentation from your file-system, i.e. you do not want to rely on the internet)
   
## Create your first presentation and slides

...
This is just RDD so far, http://tom.preston-werner.com/2010/08/23/readme-driven-development.html

We use some chef scripts at work for managing our development enviornment. I'm
imagining how this could be extracted into something simpler that is also reusable.

Work in progress docs below.
----

Intro
--

Devenv is a tool designed to automate installation and maintenance of development environments by documenting them in code using chef.

Devenv is a more lightweight alternative to vagrant that works a bit like RVM.

Devenv currently only supports MacOSX.
 
Install
--

    curl http://devenv.somewhere.com/install | sh
    devenv create demo --default --use

Customize
--

* Edit devenv.rb
* Add cookbooks as needed or to override defaults.

Run chef
--

    devenv update

Add more environments
--

    devenv create demo2 --use

Deployment
--

    # 1) Create a .tar.gz of your environment (for example using a CI server)
    tar cfz demo.tar.gz demo

    # 2) Installing on a new computer:
    curl http://devenv.somewhere.com/install | sh && devenv install user@server:/path/demo.tar.gz

Show help
--

   devenv --help


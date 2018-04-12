Exercise 46: A Project Skeleton
This will be where you start learning how to set up a good project "skeleton" directory. This skeleton directory will have all the basics you need to get a new project up and running. It will have your project layout, automated tests, modules, and install scripts. When you go to make a new project, just copy this directory to a new name and edit the files to get started.

Creating the Skeleton Project Directory
First, create the structure of your skeleton directory with these commands:

$ mkdir projects
$ cd projects
$ mkdir skeleton
$ cd skeleton
$ mkdir bin data doc ext lib tests lib/NAME
I use a directory named projects to store all the various things I'm working on. Inside that directory I have my skeleton directory that I put the basis of my projects into.

Next we need to set up some initial files. Here's how you do that on Linux/macOS:

$ touch bin/NAME
$ touch lib/NAME.rb
Here's the same thing on Windows PowerShell:

$ new-item -type file  bin/NAME
$ new-item -type file  lib/NAME.rb
That creates an empty Ruby module directories we can put our code in. Then we need to create a sample gemspec file name NAME.gemspec that will describe our project:

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "NAME"
  spec.version       = '1.0'
  spec.authors       = ["Your Name Here"]
  spec.email         = ["youremail@yourdomain.com"]
  spec.summary       = %q{Short summary of your project}
  spec.description   = %q{Longer description of your project.}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/NAME.rb']
  spec.executables   = ['bin/NAME']
  spec.test_files    = ['tests/test_NAME.rb']
  spec.require_paths = ["lib"]
end
# packer-terraform-dev-env
Hobby practice project on running packer created images on AWS/other cloud providers

## Setup dev environment with terraform and packer

Purpose of this project is to create generic template which to
use when setting up multiple environments. This would be needed
when the required resources are so expensive that its not feasible
to have them running all the time.

Plan is to employ packer for the building of images to have all
environments identical and use terraform for creating
(and later destroying) the needed resources.

## Basics

Plan is to create several often used templates to be used
in different situations

## TODO:

* basic image with packer
* read packages to be installed from configuration files for easier mangement
* create simple basis terraform for rudimentary environments
* use configuration scripts that are loaded from external resourses e.g. s3 bucket or ebs disk on aws
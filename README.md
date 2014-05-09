WebCheckoutKataFeatures
=======================

Cucumber BDD features for a web-based version of the supermarket pricing kata

It provides 3 pricing scenarios:

1. Show the price of a single item
2. Show the total price of multiple items
3. Show the total price of multiple items where a special offer rule applies

Requirements
============

As a prerequisite you must have ruby and bundler installed.

Setup
=====

To install the gems required run at the root level of the repository (where the Gemfile is found):

	bundle install

Usage
=====

To run on windows use the command:

	run_windows.bat <app_url>

To run on linux use the command:

	run_linux.sh <app_url>

where <app_url> is the URL for the application under test (i.e http://localhost:3000)


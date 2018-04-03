# Shoppe

Shoppe is an Rails-based e-commerce platform which allows you to easily introduce a
catalogue-based store into your Rails 5 applications. 

**This version of Shoppe is not the original is a fork made by me.**

## Features

* An attractive & easy to use admin interface with integrated authentication
* Full product/catalogue management
* Stock control
* Tax management
* Flexible & customisable order flow
* Delivery/shipping control, management & weight-based calculation

## Getting Started

Shoppe provides the core framework for the store and you're responsible for creating
the storefront which your customers will use to purchase products. In addition to
creating the UI for the frontend, you are also responsible for integrating with whatever
payment gateway takes your fancy.

### Installing into a new Rails application

To get up and running with Shoppe in a new Rails application is simple. Just follow the
instructions below and you'll be up and running in minutes.

    rails new my_store
    cd my_store
    echo "gem 'shoppe', :git => 'https://github.com/andreavecy/shoppe.git'" >> Gemfile
    echo "gem 'globalize', github: 'globalize/globalize'" >> Gemfile
    echo "gem 'activemodel-serializers-xml'" >> Gemfile
    bundle
    rails generate shoppe:setup
    rails generate nifty:key_value_store:migration
    rake db:migrate shoppe:setup
    rails server

## Contribution

If you want to help with this project, please contact me. to my email (andreavecino94@gmail.com) if you want to get in touch with the original creator, communicate with him through Twitter (@adamcooke) or by email at adam@atechmedia.com.

## License

Shoppe is licenced under the MIT license. Full details can be found in the MIT-LICENSE
file in the root of the repository.

= Notable

## Installation
Add this line to your application's Gemfile:

gem 'notable'
And then execute:

```
$ bundle
$ rake notable:install:migrations
```

Now that Notable is installed, you'll need to mount the engine within your config/routes.rb file:

```
Some::Application.routes.draw do
  mount Notable::Engine => "/notable", :as => :noted
end
```
see, https://github.com/ChrisLundquist/notable/blob/master/test/dummy/config/routes.rb#L5


in app/assets/javascripts/application.coffee
```
#= require jquery
#= require jquery_ujs
#= require notable/application
```

## Usage

In your favorite model,
```
class Car < ActiveRecord::Base
  has_many :notes, :as => :notable, :class_name => "Notable::Note"
end
```
As exemplified in, https://github.com/ChrisLundquist/notable/blob/master/test/dummy/app/models/car.rb

In the view
```
  # Awesome HTML stuff
  <%= render :partial => "notable/notes/note", :locals => { :notable => @car } %>
```
as exemplified in, https://github.com/ChrisLundquist/notable/blob/master/test/dummy/app/views/cars/show.html.erb#L23



## Thanks
Shout out to https://github.com/peek/peek as a reference on engines


This project rocks and uses MIT-LICENSE.

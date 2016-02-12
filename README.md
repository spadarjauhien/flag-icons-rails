flag-icons-rails [![Gem Version](http://img.shields.io/gem/v/flag-icons-rails.svg)](https://rubygems.org/gems/flag-icons-rails) [![Gem Downloads](http://ruby-gem-downloads-badge.herokuapp.com/flag-icons-rails)](https://rubygems.org/gems/flag-icons-rails) [![Code Climate](https://codeclimate.com/github/eugenegarl/flag-icons-rails/badges/gpa.svg)](https://codeclimate.com/github/eugenegarl/flag-icons-rails)
---
**flag-icons-rails** provides [flag-icon-css](https://github.com/lipis/flag-icon-css) - a collection of all country flags in SVG - as a Ruby gem for use with the asset pipeline.

### Installation

Add this to your Gemfile:

```ruby
gem 'flag-icons-rails'
```

and then execute:

```sh
bundle install
```

Do not add gem to `assets` section if you want to use [ `flag_icon` rails helper](#rails-helper-usage).

### Usage

In your `application.css`, include the file:

```css
/*
 *= require flag-icon
 */
```

If you prefer [SCSS](http://sass-lang.com/documentation/file.SASS_REFERENCE.html), add this to your
`application.scss` file:

```scss
@import "flag-icon";
```

Then restart your webserver if it was previously running.

### Plain usage

In your view:

```html
<span class="flag-icon flag-icon-by"></span>
```

```html
<span class="flag-icon flag-icon-by flag-icon-squared"></span>
```

### Rails Helper usage

In your view:

```ruby
flag_icon(:by)
# => <span class="flag-icon flag-icon-by"></span>
```

```ruby
flag_icon(:by, true)
# => <span class="flag-icon flag-icon-by flag-icon-squared"></span>
```

```ruby
flag_icon(:by, id: 'my-flag', class: 'strong')
# => <span id="my-flag" class="flag-icon flag-icon-by flag-icon-squared strong"></span>
```

### Thanks

* **lipis** for amazing collection of all country flags [flags-icon-css](https://github.com/lipis/flag-icon-css)
* **cfiorini** for [flag-icon-sass](https://github.com/cfiorini/flag-icon-sass) gem this one is based on

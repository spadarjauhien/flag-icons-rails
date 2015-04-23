FlagIconSass
---

This project integrates [https://github.com/lipis/flag-icon-css](https://github.com/lipis/flag-icon-css) in a Ruby Gem but only the sass version.

**THIS GEM IS IN EARLY BETA STATE SO USE AT YOUR OWN RISK**

### Installation

In your Gemfile include:

```ruby
gem 'flag-icon-sass', '~> 0.1'
```

And then execute:

```sh
bundle install
```

Import the FlagIconSass styles in your `app/assets/stylesheets/application.scss`.

```scss
@import "flag-icon-sass";
```

#### Plain usage

In your view:

```html
<span class="flag-icon flag-icon-it"></span>
```

```html
<span class="flag-icon flag-icon-it flag-icon-squared"></span>
```

#### Rails Helper usage

In your view:

```ruby
flag_icon(:it)
# => <span class="flag-icon flag-icon-it"></span>
```

```ruby
flag_icon(:it, true)
# => <span class="flag-icon flag-icon-it flag-icon-squared"></span>
```

```ruby
flag_icon(:it, id: 'my-flag', class: 'strong')
# => <span id="my-flag" class="flag-icon flag-icon-it flag-icon-squared strong"></span>
```

### Thanks

* [https://github.com/lipis/flag-icon-css](https://github.com/lipis/flag-icon-css) for flags-icon-css
* [font-awesome-sass gem](https://github.com/FortAwesome/font-awesome-sass) for inspiration
* [bootstrap-sass gem](https://github.com/twbs/bootstrap-sass) for inspiration
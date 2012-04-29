# Nesta Plugin: NextPrev

This plugin provides some basic "next page" and "previous page" navigation helpers.

## Usage

The following helpers are provided:

`next_page_in_menu`

Returns a Nesta `Page` that is the next page is your `menu.txt` in relation
to the current page.  Returns nil if there is no next page (i.e. the current
page is the last page in the menu).

`prev_page_in_menu`

Returns a Nesta `Page` that is the previous page is your `menu.txt` in
relation to the current page.  Returns nil if there is no previous page
(i.e. the current page is the first page in the menu).

`link_to_next_page_in_menu("Optional Anchor Text")`

Returns an HTML link (`a` tag) to the next page in the menu with
the given anchor text. If no anchor text is provided, the heading of the
next page is used. Note: the haml operator `=` should be used to emit this tag
in to the template or layout, as only the string is returned (`haml_tag` is
not employed). 

`link_to_prev_page_in_menu("Optional Anchor Text")`

Returns an HTML link (`a` tag) to the previous page in the menu with
the given anchor text. If no anchor text is provided, the heading of the
previous page is used. Note: the haml operator `=` should be used to emit this tag
in to the template or layout, as only the string is returned (`haml_tag` is
not employed). 

## Installation

Add this line to your application's Gemfile (which uses a reference to the git
repo until a gem is created):

    gem 'nesta-plugin-next-prev', :git => 'git://github.com/moklett/nesta-plugin-next-prev.git'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nesta-plugin-next-prev

## Limitations

Currently, the only navigation style offered is next and previous page within the global menu (i.e. `menu.txt`) scope.  In other words, next and previous pages with respect to articles sorted by date or pages sorted by priority within categories are not supported. 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

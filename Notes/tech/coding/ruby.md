---
id: "tech/coding/ruby.md"
aliases:
  - "Ruby"
tags: []
---

# Ruby

Some interesting ressources for the programming language ruby.

## RVM SSL errors

Install again with:

```
rvm install 3.0.2 --with-openssl-dir=`brew --prefix openssl`
```

If you got `You must recompile Ruby with OpenSSL support` on Mac ARM (M1) you have to:

```bash
brew uninstall openssl@3
brew reinstall openssl@1.1

#open new shell
rvm reinstall "ruby-3.0.0" --with-openssl-dir=`brew --prefix openssl@1.1` --disable-binary
```

On arch you have to install openssl-1.0 and run:
```bash
PKG_CONFIG_PATH=/usr/lib/openssl-1.0/pkgconfig:/usr/lib/pkgconfig rvm install <ruby-version>
```

## Useful functions
Some `ruby` functions:

```ruby
truncate(recipe.description, length: 150)   # truncate
time_ago_in_words(recipe.created_at)        # date
pluralize(count, "apple")                   # pluralize if count > 1 to apples

```

## Object lookup

```ruby
module GildedRose
	DEFAULT_CLASS = Item
	SPECIALIZED_CLASSES = {
		'normal' => Normal,
		'Aged Brie' => Brie,
		'Backstage passes to a TAFKAL80ETC concert' => Backstage }

	def self.for(name, quality, days_remaining)
		(SPECIALIZED_CLASSES[name] || DEFAULT_CLASS)
			.new(quality, days_remaining)
	end
end
```

## Books

 - [I love ruby](https://i-love-ruby.gitlab.io/#_getting_started)

       
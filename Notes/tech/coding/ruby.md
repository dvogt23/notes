---
id: "tech/coding/ruby.md"
aliases:
  - "Ruby"
tags: []
---

# Ruby

Some interesting ressources for the programming language ruby.

## Books

 - [I love ruby](https://i-love-ruby.gitlab.io/#_getting_started)

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

### Lambda composition
Combine lambda blocks together with  `>>` i.e. to create a new one like `TAX_FEE = TAX >> FEE`

```ruby
# List of our individual pricing rules
TAX           = ->(val) { val + val*0.05 }
FEE           = ->(val) { val + 1 }
PREMIUM       = ->(val) { val + 10 }
DISCOUNT      = ->(val) { val * 0.90 }
ROUND_TO_CENT = ->(val) { val.round(2) }
# One presenter
PRESENT       = ->(val) { val.to_f }

# Pre-define some rule sets for some pricing scenarios
REGULAR_SET    = [FEE, TAX, ROUND_TO_CENT, PRESENT]
PREMIUM_SET    = [FEE, PREMIUM, TAX, ROUND_TO_CENT, PRESENT]
DISCOUNTED_SET = [FEE, DISCOUNT, TAX, ROUND_TO_CENT, PRESENT]
```

Now we can define a price calculator:

```ruby
def apply_rules(rules:, base_price:)
  rules.inject(:>>).call(base_price)
end
```

Source: [get-around.tech](https://getaround.tech/ruby-lambda-composition/)
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

## Match data

```ruby
class MatchData
  alias_method :deconstruct, :to_a

  def deconstruct_keys(keys)
    named_captures.transform_keys(&:to_sym).slice(*keys)
  end
end

IP_REGEX = /
  (?<first_octet>\d{1,3})\.
  (?<second_octet>\d{1,3})\.
  (?<third_octet>\d{1,3})\.
  (?<fourth_octet>\d{1,3})
/x

'192.168.1.1'.match(IP_REGEX) in {
  first_octet: '198',
  fourth_octet: '1'
}
# => true
```
Source: [dev.to/baweaver](https://dev.to/baweaver/pattern-matching-interfaces-in-ruby-1b15)

## Refinement

Extend/overwrite string behavior in module (specific scope)

```ruby
module PatchedString
  refine String do
    def +(value)
      self << ", #{value}"
    end
  end
end

module RegularNamespace
  def self.append_strings(a, b)
    a + b
  end
end

module PatchedNamespace
  using PatchedString

  def self.append_strings(a, b)
    a + b
  end
end

RegularNamespace.append_strings("1", "2") # => "12"
PatchedNamespace.append_strings("1", "2") # => "1, 2"
```
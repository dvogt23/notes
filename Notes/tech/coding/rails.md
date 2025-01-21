---
id: rails
aliases: []
tags: []
---

# Rails

Rails is a very cool framework for web-applications and IMO the best for
mvp-prototyping and beyond.

## Curriculum

 - [Full Stack Ruby on Rails | theodinproject](https://www.theodinproject.com/paths/full-stack-ruby-on-rails)

Learning from some youtube guys:

 - [Video](https://www.youtube.com/watch?v=8i5JFLfbWkE) Source: [Projekt](https://github.com/justalever/projekt)
 - [Video](https://www.youtube.com/watch?v=u2o_new-T0o&t=555s) Source:
   [simple-pm](https://github.com/StephenFiser/simple-pm/tree/episode-1)
 - Best practises [Semicolon&Sons - Best practises I](https://youtu.be/vw7PlBvLq9k)
   Passing ruby data to javaScript

## Articles

- Great note collection from [corsego](https://blog.corsego.com/)
  - devise, hotwire, turbo, darkmode, basics, views
- Some great articles about coding [johnnunemaker](https://www.johnnunemaker.com/)
  - rails, ruby, ...
- Great summary about encryption in rails7 [corsego](https://blog.corsego.com/encrypted-credentials)
- [ActiveRecord Mistakes that slow down your app](https://www.speedshop.co/2019/01/10/three-activerecord-mistakes.html#where-means-filtering-is-done-by-the-database)
- Modularisation (Monolith):
	 - [Deconstructing the Monolith](https://shopify.engineering/deconstructing-monolith-designing-software-maximizes-developer-productivity)
	 - [The Modular Monolith: Rails Architecture | by Dan Manges | Medium](https://medium.com/@dan_manges/the-modular-monolith-rails-architecture-fb1023826fc4)
	 - [Ruby on Rails - Bounded contexts via interface objects](https://blog.eq8.eu/article/rails-bounded-contexts.html)
	 - [Enforcing Modularity inside a Rails Monolith | by Thomas Pagram | The Airtasker Tribe | Medium](https://medium.com/airtribe/enforcing-modularity-inside-a-rails-monolith-f856adb54e1d)
	 - [Enforcing Modularity in Rails Apps with Packwerk](https://shopify.engineering/enforcing-modularity-rails-apps-packwerk)

### Useful gems for your rails project

- **[active_link_to](https://link.mail.beehiiv.com/ss/c/u001.HofDA2EBVdlNxfKzF5PEfU54EOWufvdf_9Fvv0HBpXiBGyoDZaRkOyHx84oCgP0z36jDTd8DScOKHK_j5AMNGOk2o7PeHY-GbxOKi4_srKhm3Aij89Nq-ctZ33aUldvYI5TKhsOh5TfgvmWto2YeJGvSAMau7L57QtSGQ8PE4-T2zXwpLyHkiOfD-iPhn2rN/4db/8KnHeuGCQNej8NxWHmaDtg/h161/h001.VKvOmN9ukZ5sjRS7_8bpckiToG1vPctNX7twz0AYqGA)** - _"Helpful method when you need to add some logic that figures out if the link (or more often navigation item) is selected based on the current page or other arbitrary condition"_
- **[avo](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMFzsRiH5NxAbAQcfrTvG7KsTugOisHoZGEqnrnpej34FstRQAhSmo6_3Oq5oWUPurJk3d3rDGiYH99CDB1KB9XlCrQHJY-P4B1CLRrg40AkTWQAF4dHs25_fBDGGCsRyp0M7vBjWRmh3YPHEeGGfEqs/4db/8KnHeuGCQNej8NxWHmaDtg/h162/h001.BoWPwKTRN3TrxeHZEYUeRTIK8CCVfIO-QxEdbr9ZHXc)** - _"Avo is a very custom Content Management System for Ruby on Rails that saves engineers and teams months of development time by building user interfaces and logic using configuration rather than traditional coding; When configuration is not enough, you can fallback to familiar Ruby on Rails code."_
- **[brakeman](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMHLPYWG_L58_j4cfSqg_ix2bhCIRFHI2g5xkjJzpSVS4GOrVBB_g88eSGy-hswCXcpvxeEXCjKvOzsD4cSgqeJPIhvV69z_6-RGqz7dFbboctvmgNQfoA7LcTx4nigqf5ss2YoseGpoTR5rfClYiGpWdfX0eE6skBLnEn3UXA8Hv/4db/8KnHeuGCQNej8NxWHmaDtg/h163/h001.N18s8mUTcXJWktW9qLc_zqO-Iit-LqNv4hFGFSIeDXY)** - _"Brakeman detects security vulnerabilities in Ruby on Rails applications via static analysis."_
- **[bundler-audit](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMAJTrFSaHta6ay6iaOSRvBPkdlHvwYNrLwk5R2qD6q4RNL-DZbbiTMANu8_MPyxN8lf_vjFxyPo9H_17reET-KxGfK879bbcGCbW3J4AKYjxr5-RpCb9tBCq7dMfvy-6398fhnLwcY_puKgJ9IKxQuM3ihh_iyahZ6wu0NuVU4No/4db/8KnHeuGCQNej8NxWHmaDtg/h164/h001.SsX-0aDrG8Pi0lR_YgHROtOY6xr3ajMQMioP9jUl4qk)** - _"bundler-audit provides patch-level verification for Bundled apps."_
- **[database_consistency](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMMFvC58PMvBEL9ZeWHYY1e1zSsoqJHf69qhOwLCXq90nvs1sSJ60ikD69negU2-R2KedX0rG5XgoFfgn17PYna7oBdTtjJdU6mXs92ybh-oYSfV1_C_ZtKhKGmOAdNbVuigCYzavnu_v4-kSjbGh4TDTcKupgDPEP0nCMYualfnJ/4db/8KnHeuGCQNej8NxWHmaDtg/h165/h001.OY02avfRvLKZ4_JTL8-som5lRAQVJ6MJnwmLTG7ouA8)** - _"Provide an easy way to check the consistency of the database constraints with the application validations."_
- **[devise](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMI-lsrOwV5iq_s0qJI5tWSIOk6hDONBhPPkZqFSGgwJv2pFEkZuHekbROmQ9VW-jB86aSmmD5uELzgv3UXPbTC0zTE4Qu-qSeozsZYUHu0xMzgcomGUzIwXlvPHqp1BHHa1UyNV7OLM7XO4z8GEIr68E0lvQ5gVrcrHdey4NY3di/4db/8KnHeuGCQNej8NxWHmaDtg/h166/h001.byos13A8ZQmr79xC2TBbpORhPXJVeCGEbEtkNPe14c0)** - _"Flexible authentication solution for Rails with Warden"_
- **[interactor](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMImJqe80LDgRbBdsz4x668FT1q8B8ow8xtOxAcw5J6lgDMBukZ9DPhsDQ3xRdQEkJTIfawfmyUWj7BOGpp65s7UPRsy-8DLeK6gRJ1Q2NyWGJwl3QxIoQmciGTGPDZFOSh2IlHcC4RxvL_UcAoFf9TnIEhM7z1DzgeEGOlWQGRMu/4db/8KnHeuGCQNej8NxWHmaDtg/h174/h001.ZYaSoprWFhtGXZlmyEKD5EwXqFjP4Cgp-ez_CyP723M)** - _"Interactor provides a common interface for performing complex user interactions."_
- **[local_time](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMFn3P70Q1O4EJm9H4k4rkMqCLACabRkKJMQT2H6mUl2D6dUklqbn9pdh8y0JmkRNqXoMYeHh-LBnlMBIMKkRVj8P-NQo2aXVL5tpws31pxko68L0VHBl-R7gajT49WwUcQBlkIzjd_uCsEmYmL-30OFMBjgWxn-sU_NWKL2OIgvc/4db/8KnHeuGCQNej8NxWHmaDtg/h175/h001.1PnurRVzYSQnGn4T19fDrncmdZ_nk6G6xMBSQR2BfJE)** - _"Rails engine for cache-friendly, client-side local time"_
- **[meta-tags](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMCsV9BBCuzIfFwnGpKCGx4B6GySoW-xF_WHbV-MAEafWt-2dmApoFQ4rCf-s295vfCKft8dbhiZdvuXyH_jJiNUT785Hejj2tqOqTyflemOBzTn2dzGz4Qwrei0jq6n5diuVQqhtKakDyYdx2YEB7vVLVWmg-nmgkCG7JoXtKjza/4db/8KnHeuGCQNej8NxWHmaDtg/h176/h001.NIh5kE7I_vn4lyVoHAsM1en9dkpj13Ib6zbIFkfFMpk)** - _"Search Engine Optimization (SEO) plugin for Ruby on Rails applications."_
- **[minitest](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMLd0WMMqfzehqetT_Fyv2yPPNM5V3THAdoYrpY2b_wZigmS_JBlfW3Px5GQ4imgG0InH8qelesKKH-zg0Rj8Vvi6TADhML0TIriWkdz931f21nxpT5V7cGzXkCg0eHJ5gCdejoupOl5em_68HItBvGx0O5KLChDpNxw_4URDxAPR/4db/8KnHeuGCQNej8NxWHmaDtg/h177/h001.CRQKUHGVp7DSc4-qbONrp8K2spwwhso-JAV70snlhEQ)** - _"minitest provides a complete suite of testing facilities supporting TDD, BDD, mocking, and benchmarking"_
- **[nocheckout](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMLuLEUjxfDE9ATWslQr-i4sm7g5zTZQCHZf2pl4LFkrcY3jGVXJgKTtBs1tC_IQhjtYRgCYYvdXcMeSkVrCWCYNM1Eo6ljo5W9jLkJs5oAfXahTwpM0kHvfMVClhy5aU53LYuiQzwwBWTeVm1N0OEx3U6bHv3efFsKjDDl2k-LGb/4db/8KnHeuGCQNej8NxWHmaDtg/h178/h001.j8eiVx5o00U_glYmMJDlO_ne4F4Sl4A5uLZVU2dy9rw)** - _"Rails controllers for Stripe Checkout Sessions and Webhooks"_
- **[nopassword](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMBvM4DiQ-AX57Lqxzx2H8I4xfdseH_dcHgXpYGbp-g-C5HguYIUqKyl4gnWOJ0iRUhJXPxLk2wdUFURkxDYhubup7EB61vTcELEv6q0BueINgSDQBa7q9ZWqy6wgSNRU2uickioAcZMbg6XvClaN-Mom_ndcO0_8y6JjgFuyb7T0/4db/8KnHeuGCQNej8NxWHmaDtg/h179/h001.5caPffiY9CNOTOwiq3mRv9mOEM9LQ8VSX1SClhT2X-U)** - _"NoPassword is a toolkit that makes it easy to implement temporary, secure login codes initiated from peoples' web browsers so they can login to Rails applications via email, SMS, CLI, QR Codes, or any other side-channel."_
- **[og](https://link.mail.beehiiv.com/ss/c/u001.Tuw4pyl3dUE7P9jrHEbWpiUsK_eg9M50m0o46dtYgjcBSTdgCu0DojfAdneL0TdfpsmRj831ews0Ymm-Ao8pjyWs-vkLAKiWH9Dhaf0zp5VaojtOs_9oI0LescjPaQ8XCvRHw6WyZ1KKSCRbukDQh-09wt2a7Cxa-pQz934HEXM/4db/8KnHeuGCQNej8NxWHmaDtg/h180/h001.k9mSgi3boquLji9XYUbO_7a1ILqqojXbzowj1vnRjJo)** - _"Object Graph (Og) is a state of the art ORM system. Og serializes standard Ruby objects to Mysql, Postgres, Sqlite, KirbyBase, Filesystem and more."_
- **[omniauth-oauth2](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMAlIVy8nBldhpVfrb-_TBx9dxksZ3jbZpE3hYVWBONMC3yuKajdTHpt1XNdibhVHqMuWU5D2oaK15TDO212vhYouiAIDsL-vknGKHkmtZsF7RkrIS1GFVcG0gZnmy32NCbOlc95xu-A7hJ7kun029Z5sWw-AgjMO9AMq_DPLkKoU/4db/8KnHeuGCQNej8NxWHmaDtg/h181/h001.UVR7OGlTg5hDrBwtvvqkjvqPiDeyk9z8KlnwTh7MBfI)** - _"An abstract OAuth2 strategy for OmniAuth."_
- **[overmind](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMNebR6y-5XulAu34Bq_zYL5PPgDn_TXV9su5jSkhvJa0BTni9mtVyeDC8XiK29iOHpJ41W4tt3IHxFvcaVX60zcZErNO1KtY2yxZdp9TVm66JT1ylCO8QZWMRXKq9txGyezOkgF4wV81-SB0rU3-z6h1t--L1_oA8-vokKAglCro/4db/8KnHeuGCQNej8NxWHmaDtg/h182/h001.688-OdDvozaGEEPpzTykTiu3V5p2F2nS61iG7tTlSso)** - _"Overmind is a process manager for Procfile-based applications and tmux."_
- **[pagy](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMOjrW4kxccUbYjfIs9N5PGPMq6wlL6eYLbFzQSGROu9AgSu2GCNnpDbm2B3og6Hn8H3qtSu40KuxrXLx34PY0pGPtEtSOIiYCWsv_ciPmaawySHoY2bdLNihKXzpuF9FhXdrihL_NDj0yiBhaCv-17s/4db/8KnHeuGCQNej8NxWHmaDtg/h183/h001.jzLmpFr_1B_PeqKCex0sHoO1Hsz2PJAAUFXZM41T6xY)** - _"Agnostic pagination in plain ruby. It does it all. Better."_
- **[phlex](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMLe1aCgzGYXudC0IftX3LC1Y0Zg21nzQ59GIgBOfrikilDuF51vWMvAgVzluZSSbtAJhjojS_iHxr0HTaOrGsMWt7S5dEUpihKX9DvtbOFmD24KORluHyPEmKeu6zPYWW4tpCqHPwX979-TlfeO9Raste4iIN7RmTMAv7Pxwc7ay/4db/8KnHeuGCQNej8NxWHmaDtg/h184/h001.tRUSyTtfPkCJDyFlhUfP5a0tA359tanUWcQIATqzaIE)** - _"A high-performance view framework optimised for fun."_
- **[pundit](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMKKe-cuP0A5wlbPWGLWvFYuEqKFYGPr-ScS3GS6obxBTiT0KogHicfJdqFn6uoiY457hXRurMSPBycoxQTM4-0al7F86S_7u5PNsJ78Eq64FYgGI5lAqHxu0C7EFu4Frb8ERW2FMY8-ovrvyvouCxXQ/4db/8KnHeuGCQNej8NxWHmaDtg/h185/h001.sb87HF6ayDuk-yNFWEKfpUIDp5IHwzGOrAeAdxBmr5s)** - _"Object oriented authorization for Rails applications"_
- **[ransack](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMDz72pf4EXU-WtEskfjWDzzr3fBKFpMtEki5kKGAfdU043q2roqaR2Hr1HTjwzDTp2PF_zryvCEcO79PAxeb92Tr9gw74NZmwlImB6UidClCvHpafzNW5OGSn33Ofy31yc_bxXmNidJZmaGZk_K45cf7IHJkDxxMvDjUf-oflz4t/4db/8KnHeuGCQNej8NxWHmaDtg/h186/h001.WkZVp5mpOCA74Rq9oMADhGor-Ksz1BDLhdgh7nGuolA)** - _"Ransack is the successor to the MetaSearch gem. It improves and expands upon MetaSearch's functionality, but does not have a 100%-compatible API."_
- **[strong_migrations](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMGc3VtxQY5xeg-TchXPbXjF9jmLz0Wj9mW3Tkuy3suSzosnnJ4rTnHfiOO0rbbZxWuf7EmHfllMWfyMuY3W1e0qVXJxrcAnNfpSF_iKuas99X-GCYDVjhz33mCt1Veuwm4wbhdrmTUrmYg4jrn7027lmTpXSBTz_oJ6ta8kZEcVa/4db/8KnHeuGCQNej8NxWHmaDtg/h187/h001.aIk-GV28HB2MUXDj-z6vcCRsmFEFAZnwHvuZDDuKW20)** - _"Catch unsafe migrations in development"_
- **[stylecheck](https://link.mail.beehiiv.com/ss/c/u001.Tuw4pyl3dUE7P9jrHEbWpiUsK_eg9M50m0o46dtYgje0GRGCO7e_Er-7XC7OiZ80MPltlP7XxSsrHoaPeEtO-Q8eQT02piVmlI9v7s2PgxYoyUPYQ_h3z8SzqMip4mqV9eJcJhFkuFYnS6Kz_aCeh9uvQ1Mj4_hfMvlJXz9CPCEA00-3iw2uu1l3G4glTiRq/4db/8KnHeuGCQNej8NxWHmaDtg/h188/h001.qG36xNkSB7sFcssA1lWvbPwRBeyQkpbI3KD_xwLdyx8)** - _"Runs code style check on Ruby and SCSS files."_
- **[superform](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMLuLEUjxfDE9ATWslQr-i4u6_6rusa0WFhETgKVsE2J1B4OTkVVq_2O91Gd0Owm1Efr4Yz0ai1fjwuZ9JDEEauc3sFbe_otQgtJmsK9gh_c7Qb-AwkWwlh0Htw7IL6V0pLND90KOafJMhmpYEgTCuZyjKtpvb_UqGOdtucK4ZKhP/4db/8KnHeuGCQNej8NxWHmaDtg/h189/h001.XipPbOeH7jp2-RrSD_8R9ebfzXKqoB3YxbBJA-cwnSE)** - _"A better way to customize and build forms for your Rails application"_
- **[superview](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMLuLEUjxfDE9ATWslQr-i4sv4AqlkeawNvfWl6fsrNr3iSJ8wlronN7G_1oGk5xDTTOgZyvm1xxZ4wzb9rVug3ZiTfAukco5fFbbr7VOBPj7iyjxtv16aeNUrRmaNSnAXSsFyS7GKCsJJNYsPFYoIbDG8pVqXbXd_bIBP0MhFh4R/4db/8KnHeuGCQNej8NxWHmaDtg/h190/h001.OB1qBJaq9Z1IE5jBq0pMQJ4zU4usNHFSO2swRPpu0Q0)** - _"Build Rails applications entirely out of Phlex components."_
- **[view_component](https://link.mail.beehiiv.com/ss/c/u001.TKJLQEijx_WLldl-_xqpMHqPGsrhxfiJAcfVOdf0xpXwWDuU_M-2IpD55EAhUJZklkH7e4sNcYaNgCjNCtOMG1MVJkyLFTPmr9Vr-Aneby6XOzF4dE7HCTlJkWWavSv4q_MCbDjZrA0oo_qQH31h01x2_l6xyhEcpIJFwo1Euc6zAH1QRi-CdfB6W8lPSwdh/4db/8KnHeuGCQNej8NxWHmaDtg/h191/h001.MXp5XC9c6imfTDe27FkA9-QrVkF58mrU9sfEN8djo7M)** - _"A framework for building reusable, testable & encapsulated view components in Ruby on Rails."

Source: [x/pkayokay](https://x.com/pkayokay/status/1878778796192735708?utm_source=shortrubynews&utm_medium=newsletter&utm_campaign=short-ruby-newsletter-edition-119&_bhlid=9a072f4bee0135a3ff54fc1d7a49c2cc6ff23c7b) / [shortruby#119](https://newsletter.shortruby.com/p/edition-119?utm_campaign=short-ruby-newsletter-edition-119&utm_medium=newsletter&utm_source=shortrubynews)

### Pattern matching

```ruby
def extract(**data)
  case data
    in name: {first:}
      puts first
    in tags: [first_tag, *_]
      puts first_tag
  end
end

> extract(name: { first: "Brad", last: "Gessler" })
"Brad"
> extract(tags: ["person", "earthling"] })
"person"
```

```ruby
def matcher(**data)
  if first = data.fetch(:first)
    puts first
  elsif data.key?(:tags)
    tags = data.fetch(:tags)
    if tags.is_a? Array
      puts tags.first
    end
  end
end
```
Source: [fly.io](https://fly.io/ruby-dispatch/pattern-matching-on-ruby-objects/)

### Colorize logger
```ruby
module ColorizedLogger
  COLOR_CODES = {
    debug:   "\e[36m",  # Cyan
    info:    "\e[32m",  # Green
    warn:    "\e[33m",  # Yellow
    error:   "\e[31m",  # Red
    fatal:   "\e[35m",  # Magenta
    unknown: "\e[37m"   # White (or terminal default)
  }.freeze

  RESET = "\e[0m"

  def debug(progname = nil, &block)
    super(colorize(:debug, progname, &block))
  end

  def info(progname = nil, &block)
    super(colorize(:info, progname, &block))
  end

  def warn(progname = nil, &block)
    super(colorize(:warn, progname, &block))
  end

  def error(progname = nil, &block)
    super(colorize(:error, progname, &block))
  end

  def fatal(progname = nil, &block)
    super(colorize(:fatal, progname, &block))
  end

  def unknown(progname = nil, &block)
    super(colorize(:unknown, progname, &block))
  end

  private

  def colorize(level, message, &block)
    "#{COLOR_CODES[level]}#{message || (block && block.call)}#{RESET}"
  end
end

Rails.logger.extend(ColorizedLogger)
```
### Test coverage pre-commit hook

To get an positive exit code for pre-commit hook integration you have to add this to your spec config:
```ruby
# spec/spec_helper.rb
RSpec.configure do |config|
  if ENV["TEST_COVERAGE"]
    SimpleCov.start "rails" do
      spec_paths = ARGV.grep %r{(spec)/\w+}
      if spec_paths.any?
        file_paths = spec_paths.map { |spec_path| spec_path.gsub(%r{spec/|_spec}, "") }
        add_filter do |file|
          file_paths.none? do |file_path|
            if file.filename.include? "/app/"
              file.filename.match?(%r{/app/#{file_path}})
            else
              file.filename.include?(file_path)
            end
          end
        end
      end
      minimum_coverage 98.9
      minimum_coverage_by_file 81.4
    end
  else
    SimpleCov.start "rails"
  end
  [...]
```

Pre-commit hook:
```bash
files=$(git --no-pager diff --name-only --cached --diff-filter=AM)
erbfiles=$(echo "$files" | grep -e '\.html.erb$')


[[ -n "$specfiles" ]] && (TEST_COVERAGE=true bundle exec rspec "$specfiles" || exit 1)
```

### before_action wrapper
```ruby
class User::LikesController < ApplicationController
  abort_without_feature :like
  must_have_feature :like

  requires_feature :like
end

# app/controllers/concerns/requires_feature.rb
module RequiresFeature
  def requires_feature(name, from: :user, **)
    before_action(-> { head :bad_request unless Flipper.enabled?(name, Current.public_send(from)) }, **)
  end
end
```
Source: [buttondown](https://buttondown.com/kaspth/archive/clear-up-your-rails-controllers-with/)
### Rails ERD

For creating an erd diagram of your db schema, you could create a pdf with: [rails-erd](https://github.com/voormedia/rails-erd) with this command:

`bundle exec rails erd attributes=foreign_keys,primary_keys,timestamps,content notation=bachman`

### Race conditions

Avoid race conditions with `ActiveRecord::Base.transaction do` and `Model.lock.find(model_id)` or `my_model_object.lock!`

Source: [fastruby.io](https://www.fastruby.io/blog/rails/code-quality/An-introduction-to-race-condition.html)

### Migration from sidekiq to solid_queue
```bash
Step 1: Update Gemfile
# Remove Sidekiq
# gem 'sidekiq'

# Add Solid Queue
gem 'solid_ queue'

Step 2: Run bundle install
# $ bundle install

Step 3: Generate Solid Queue installation files
# $ rails generate solid_queue:install

Step 4: Run migrations
# $ rails db:migrate

Step 5: Update config/application.rb
# Rails.application.configure do 
#	config.active_job.queue_adapter = :solid_queue
# end

Step 6: Remove Sidekiq initializer
# Delete or comment out config/initializers/sidekiq.rb

Step 7: Update worker process command in Profile or deployment scripts
# Old: worker: bundle exec sidekiq
# New: worker: bundle exec rails solid_queue: start

Step 8: Remove Redis configuration related to Sidekiq
# Check config/redis.yml or any Redis initializers

Step 9: Update any Sidekiq-specific code in your jobs

Before:
# class MyJob
# include Sidekiq: :Worker
# def perform(args)
#  job logic
# end
# end

After:
# class MyJob < ApplicationJob
# queue_as: default def perform(args)
# job logic
# end

Step 10: Update any Sidekiq-specific API calls

# Before: Sidekiq:: Client.push( 'class' => MyJob,
# After: MyJob. perform_later (1, 2, 3)

Step 11: Set up Mission Control (optional)

# In Gemfile:
gem 'mission_control-jobs'

# In config/routes.rb:
Rails.application.routes.draw do
	mount MissionControl::Jobs::Engine, at: "/jobs" 
end

Step 12: Remove any Sidekiq web UI routes

# Delete or comment out in config/routes.rb:

# require 'sidekiq/web'
# mount Sidekiq:: Web => '/sidekiq'
```

###  Responsible monkeypatch
Here's the list of rules I try to follow:
1. Wrap the patch in a module with an obvious name and use `Module#prepend` to apply it
2. Make sure you're patching the right thing
3. Limit the patch's surface area
4. Give yourself escape hatches
5. Over-communicate

```ruby
# ActionView's date_select helper provides the option to "discard" certain
# fields. Discarded fields are (confusingly) still rendered to the page
# using hidden inputs, i.e. <input type="hidden" />. This patch adds an
# additional option to the date_select helper that allows the caller to
# skip rendering the chosen fields altogether. For example, to render all
# but the year field, you might have this in one of your views:
#
# date_select(:date_of_birth, order: [:month, :day])
#
# or, equivalently:
#
# date_select(:date_of_birth, discard_year: true)
#
# To avoid rendering the year field altogether, set :render_discarded to
# false:
#
# date_select(:date_of_birth, discard_year: true, render_discarded: false)
#
# This patch assumes the #build_hidden method exists on
# ActionView::Helpers::DateTimeSelector and accepts two arguments.
#
module RenderDiscardedMonkeypatch
  class << self
    EXPIRATION_DATE = Date.new(2021, 8, 15)

    def apply_patch
      if Date.today > EXPIRATION_DATE
        puts "WARNING: Please re-evaluate whether or not the ActionView "\
          "date_select patch present in #{__FILE__} is still necessary."
      end

      const = find_const
      mtd = find_method(const)

      # make sure the class we want to patch exists;
      # make sure the #build_hidden method exists and accepts exactly
      # two arguments
      unless const && mtd && mtd.arity == 2
        raise "Could not find class or method when patching "\
          "ActionView's date_select helper. Please investigate."
      end

      # if rails has been upgraded, make sure this patch is still
      # necessary
      unless rails_version_ok?
        puts "WARNING: It looks like Rails has been upgraded since "\
          "ActionView's date_select helper was monkeypatched in "\
          "#{__FILE__}. Please re-evaluate the patch."
      end

      # actually apply the patch
      const.prepend(InstanceMethods)
    end

    private

    def find_const
      Kernel.const_get('ActionView::Helpers::DateTimeSelector')
    rescue NameError
      # return nil if the constant doesn't exist
    end

    def find_method(const)
      return unless const
      const.instance_method(:build_hidden)
    rescue NameError
      # return nil if the method doesn't exist
    end

    def rails_version_ok?
      Rails::VERSION::MAJOR == 6 && Rails::VERSION::MINOR == 1
    end
  end

  module InstanceMethods
    # :render_discarded is an additional option you can pass to the
    # date_select helper in your views. Use it to avoid rendering
    # "discarded" fields, i.e. fields marked as discarded or simply
    # not included in date_select's :order array. For example,
    # specifying order: [:day, :month] will cause the helper to
    # "discard" the :year field. Discarding a field renders it as a
    # hidden input. Set :render_discarded to false to avoid rendering
    # it altogether.
    def build_hidden(type, value)
      if @options.fetch(:render_discarded, true)
        super
      else
        ''
      end
    end
  end
end

RenderDiscardedMonkeypatch.apply_patch
```

Source: [appsignal/blog](https://blog.appsignal.com/2021/08/24/responsible-monkeypatching-in-ruby.html)
## RSpec
### Bisect flaky tests
with `rspec --bisect <file>` you could find flaky test setting to re-run it.
> [!Hint]
If `rspec` exits with `1` if suite passes, try `untilpass() { until "$@"; do :; done }` and run it with `untilpass rspec ...`
### Testing an array with attributes

```ruby
expect(items[0].id).to eql(1)
expect(items[0].name).to eql('One')
expect(items[1].id).to eql(2)
expect(items[1].name).to eql('Two')

expect(items[0]).to have_attributes(id: 1, name: 'One')
expect(items[1]).to have_attributes(id: 2, name: 'Two')

expect(items).to match_array([
  have_attributes(id: 1, name: 'One'),
  have_attributes(id: 2, name: 'Two'),
])
```
Source: [benpickles](https://www.benpickles.com/articles/73-testing-an-array-of-objects-with-rspec-have_attributes)

### Custom matcher

```ruby
RSpec::Matchers.define :have_errors_on do |attribute|
  chain :with_message do |message|
    @message = message
  end

  match do |model|
    model.valid?

    @has_errors = model.errors.key?(attribute)

    if @message
      @has_errors && model.errors[attribute].include?(@message)
    else
      @has_errors
    end
  end

 failure_message_for_should do |model|
     if @message
       "Validation errors #{model.errors[attribute].inspect} should include #{@message.inspect}"
     else
       "#{model.class} should have errors on attribute #{attribute.inspect}"
     end
   end

   failure_message_for_should_not do |model|
     "#{model.class} should not have an error on attribute #{attribute.inspect}"
   end
 end


# usage
describe User do
  before { subject.email = "foobar" }

  it { should have_errors_on(:email).with_message("Email has an invalid format") }

end
```

## Data class

Similiar to the [value-alike objects](https://docs.ruby-lang.org/en/master/Data.html) in ruby(3.2), here an example for rails:

```ruby
class DataClass
  ATTRIBUTES = %i[first_name last_name city zipcode phone_number].freeze

  include ActiveModel::Model

  attr_accessor *ATTRIBUTES

  def ==(object)
    ATTRIBUTES.all? { |attribute| public_send(attribute) == object.public_send(attribute) }
  end
end

ConsumerClass.new(DataClass({first_name: "Bill", last_name: "...", ...}))
```
Links: [Polyfill - Data gem](https://github.com/saturnflyer/polyfill-data)

## RSpec factory trait & transient

```ruby
FactoryBot.define do
  factory :user, class: User do
    trait :with_book do
      transient do
        # 🦄1. default value when you use :with_book trait
        # 🦄2. Dont't assign just 'Agile'. see also: https://thoughtbot.com/blog/deprecating-static-attributes-in-factory_bot-4-11
        title { 'Agile' }
      end
      after(:build) do |user, evaluator|
        user.book = FactoryBot.create(:book, title: evaluator.title)
      end
    end
  end

  factory :book, class Book do
    sequence(:title) { |n| "book no.#{n}" } # 🦄 default value
  end

end

# usage
let!(:user) { create(:user, :with_book, title: 'Ruby') }
```
Source: [dev.to/n350071](https://dev.to/n350071/rspec-factorybot-transient-trait-with-argument-2djd)

## RailsWorld2023

Some notes on talks:

- Turbo morphing
	- new feature for keep scrolling position on whole dom body change
- no-build / bun
	- key goal to eliminate build time for frontend stuff, ship as code
- if assignment block
	```ruby
	def test
	  42
	end
	if a = test
		puts "Assign #{a}"
	else
	  puts "Nil is return"
	end
	```
- Class.method(:name).source_location
	- get code location of a method
- Model attribute strict_loading prohibit loading relations
- Migration add_column :virtual
```ruby
create_table :users do |t|
  t.numeric :height_cm
  t.virtual :height_in, type: :numeric, as: 'height_cm / 2.54', stored: true
end
```
- Model with_options relations
```ruby
class User
  with_options dependent: :destroy do |options|
    options.has_many :tasks, class_name: "UserTask"
    options.has_many :addresses
  end
end
```
- try(:method_name) || default_method
- Routing constraints
	- subdomain
	- authenticated
- Routes draw split into files
- rails generate generator ApiClient
- String truncate_words with omission
- DateTime before? past? future?
- Time.current.all_day .all_week …
- Abbreviation number_to_human() round_mode significant format units

## Professional Ruby on Rails Developer with Rails 5

Some notes while doing the [udamy course](https://www.udemy.com/course/pro-ruby-on-rails-rails5/) and some [ruby](./ruby.md) notes:

### Basics

Render plain text:
```ruby
def hello
  render plain: "hello world!"
end
```

Create a controller with a method and use a object in view:

```ruby
# controller
class TodosController < ApplicationController

  def new
   @todo = Todo.new
  end

end

# view
<%= form_for @todo do |f| %>

<% end %>
```

Use `flash` for notifications:

```ruby
#controller
@todo.save
flash[:notice] = "Todo was created successfully"

# view
<% flash.each do |name, msg| %>
  <ul>
    <li><%= msg %></li>
  </ul>
<% end %>
```

A bootstrap styled flash messages:

```ruby
<div class="row">
  <div class="col-md-10 col-md-offset-1">
    <% flash.each do |name, msg| %>
      <div class="alert alert-<%= name %>">
        <a href="#" class="close" data-dismiss="alert">×</a>
        <%= msg %>
      </div>
    <% end %>
  </div>
</div>
```

Render partials in view ie a file `views/layouts/_messages.html.erb`:

```ruby
<%= render 'layouts/messages' %>
```

Before run a method do action:

```ruby
# controller
before_action :set_todo, only: [:edit, :update, :show, :destroy]

private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:name, :description)
  end

  # permit has_many list
  def recipe_params
    params.require(:recipe).permit(:name, :description, ingredient_ids: [])
  end

end
```

Add pg to production for ie. heroku deployment:

```ruby
group :production do
  gem 'pg'
end

bundle install --without production
```

Some simple validations:

```ruby
validates :name, presence: true
validates :description, presence: true, length: { minimum: 5, maximum: 500 }
```

Application helpers:

```ruby
helper_method :current_chef, :logged_in?

def current_chef
  @current_chef ||= Chef.find(session[:chef_id]) if session[:chef_id]
end

def logged_in?
  !!current_chef
end

def require_user
  if !logged_in?
    flash[:danger] = "You must be logged in to perform that action"
    redirect_to root_path
    # also possible
    redirect_to :back
  end
end
```

Render partial for model:

```ruby
# View
<% if recipe.ingredients.any? %>
  <p>Ingredients: <%= render recipe.ingredients %></p>
<% end %>

# Now create a new partial _ingredient.html.erb under the app/views/ingredients folder for this to work

<span class="badge"><%= link_to ingredient.name, 
                      ingredient_path(ingredient) %>   </span>
````

### Model

Order models by column:

```ruby
# order by updated_at -> top of model
default_scope -> { order(updated_at: :desc) }
```

Get just the last 20 entries of a model

```ruby
def self.most_recent
  order(:created_at).last(20)
end
```

### Routes

Set root route:

```ruby
# router.rb
root "pages#home"
```

Specific route to controller#method:

```ruby
get '/about', to: 'pages#about'
```

Nested routes:

```ruby
resources :recipes do
  resources :comments, only: [:create]
end

# Form in view
<%= form\_for(\[@recipe, @comment\], :html => {class: "form-horizontal", 
                                                role: "form"}) do |f| %>
````

### Links

Create links in views:

```ruby
<%= link_to "Edit this todo", edit_todo_path(@todo) %>
<%= link_to "Back to todos listing", todos_path %>
<td><%= link_to 'delete', todo_path(todo), method: :delete, data: { confirm: "Are you sure?"} %></td>
<%= link_to "MyRecipes", root_path, class: "navbar-brand", id: "logo" %>
<%= link_to "Sign up or log in", "#" class: "btn btn-danger btn-lg" %>
```

### Tests

Create integration test for model:

```ruby
rails generate integration_test recipes
```

Simple test root path:

```ruby
test "should get home" do
  get pages_home_url
  assert_response :success
end

test "should get root" do
  get root_url
  assert_response :success
end
```

to fix this tests, do:

```ruby
root "pages#home"
get 'pages/home', to: 'pages#home'

# controller
class PagesController < ApplicationController
  def home
  end
end
```

Test a simple validation:

```ruby
require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

  def setup
    @recipe = Recipe.new(name: "vegetable", description: "great vegetable recipe")
  end

  test "recipe should be valid" do
    assert @recipe.valid?
  end

  test "name should be present" do
    @recipe.name = " "
    assert_not @recipe.valid?
  end

  test "description should be present" do
    @recipe.description = " "
    assert_not @recipe.valid?
  end

  test "description shouldn't be less than 5 characters" do
    @recipe.description = "a" * 3
    assert_not @recipe.valid?
  end

  test "description shouldn't be more than 500 characters" do
    @recipe.description = "a" * 501
    assert_not @recipe.valid?
  end

  test "should get recipes show" do
    get recipe_path(@recipe)
    assert_template 'recipes/show'
    assert_match @recipe.name, response.body
    assert_match @recipe.description, response.body
    assert_match @chef.chefname, response.body
  end

  test "should get recipes listing" do
    get recipes_path
    assert_template 'recipes/index'
    assert_select "a[href=?]", recipe_path(@recipe), text: @recipe.name
    assert_select "a[href=?]", recipe_path(@recipe2), text: @recipe2.name
  end
end
```

Test a email validation:

```ruby
require 'test_helper'

class ChefTest < ActiveSupport::TestCase

  def setup
    @chef = Chef.new(chefname: "mashrur", email: "mashrur@example.com")
  end

  test "should be valid" do
    assert @chef.valid?
  end

  test "name should be present" do
    @chef.chefname = " "
    assert_not @chef.valid?
  end

  test "name should be less than 30 characters" do
    @chef.chefname = "a" * 31
    assert_not @chef.valid?
  end

  test "email should be present" do
    @chef.email = " "
    assert_not @chef.valid?
  end

  test "email should not be too long" do
    @chef.email = "a" * 245 + "@example.com"
    assert_not @chef.valid?
  end

  test "email should accept correct format" do
    valid_emails = %w[user@example.com MASHRUR@gmail.com M.first@yahoo.ca john+smith@co.uk.org]
    valid_emails.each do |valids|
      @chef.email = valids
      assert @chef.valid?, "#{valids.inspect} should be valid"
    end
  end

  test "should reject invalid addresses" do
    invalid_emails = %w[mashrur@example mashrur@example,com mashrur.name@gmail. joe@bar+foo.com]
    invalid_emails.each do |invalids|
      @chef.email = invalids
      assert_not @chef.valid?, "#{invalids.inspect} should be invalid"
    end
  end

  test "email should be unique and case insensitive" do
    duplicate_chef = @chef.dup
    duplicate_chef.email = @chef.email.upcase
    @chef.save
    assert_not duplicate_chef.valid?
  end

  test "reject an invalid signup" do
    get signup_path
    assert_no_difference "Chef.count" do
      post chefs_path, params: { chef: { chefname: " ",
                                 email: " ", password: "password",
                                    password_confirmation: " " } }
    end
    assert_template 'chefs/new'
    assert_select 'h2.panel-title'
    assert_select 'div.panel-body'
  end

  test "accept valid signup" do
    get signup_path
    assert_difference "Chef.count", 1 do
      post chefs_path, params: { chef: { chefname: "mashrur",
                email: "mashrur@example.com", password: "password",
                              password_confirmation: "password" } }
    end
    follow_redirect!
    assert_template 'chefs/show'
    assert_not flash.empty?
  end

end

# controller
class Chef < ApplicationRecord
  validates :chefname, presence: true, length: { maximum: 30 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

end
```

Downcase before save with test:

```ruby
before_save { self.email = email.downcase }

# And then test it with:

test "email should be lower case before hitting db" do
  mixed_email = "JohN@ExampLe.com"
  @chef.email = mixed_email
  @chef.save
  assert_equal mixed_email.downcase, @chef.reload.email
end
```

Create a association and test it:

Association
```ruby
# chef model
validates :chef_id, presence: true
has_many :recipes

# recipe model
belongs_to :chef

# destroy with dependent
has_many :recipes, dependent: :destroy
```

Test
```ruby
def setup
  @chef = Chef.create!(chefname: "mashrur", email: "mashrur@example.com")
  @recipe = @chef.recipes.build(name: "vegetable", description: "great vegetable recipe")
end

test "recipe without chef should be invalid" do
  @recipe.chef_id = nil
  assert_not @recipe.valid?
end
```

###  Styling

Add `bootstrap` to project (good html/css tutorial [link](https://learn.shayhowe.com/html-css/)):

```ruby
gem 'bootstrap-sass', '~> 3.3.7'
gem 'jquery-rails'

# app/assets/javascripts/application.js
//= require bootstrap-sprockets

# app/assets/stylesheets/custom.css.scss
@import "bootstrap-sprockets";
@import "bootstrap";
```

### Views
Render html for each data:

```ruby
<%= f.collection_check_boxes :ingredient_ids, 
                                    Ingredient.all, :id, :name do |cb| %>
<% cb.label(class: "checkbox-inline input_checkbox") {cb.check_box(class: "checkbox") + cb.text} %>
      <% end %>
````

### Database

Create migration:

```ruby
rails generate migration create_recipes

# modify the migration file
rails db:migrate
```

Rename column:

```ruby
rename_column :recipes, :email, :description
rails db:migrate
```

Many to many association:

```ruby
# Model
has_many :recipe_ingredients
has_many :recipes, through: :recipe_ingredients
````

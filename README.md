# gitmodel-rails

**gitmodel-rails** is a rails gem that integrates [Gitmodel](https://github.com/pauldowman/gitmodel) with Ruby on Rails ~> 3.2

## Install

Put this in your `Gemfile`

``` rb
gem 'gitmodel-rails'
```
and run `bundle install`

*NB.* you can remove any explicit dependency on `gitmodel` from your `Gemfile` since it is automatically required by `gitmodel-rails`

### Generate `config/gitmodel.yml`

``` 
rails g gitmodel:install
```

### Configuring gitmodel

``` yml
gitmodel:
  db_root:   db/gitmodel # joined with Rails.root
  default_branch: master
    
  git_user_name: "Git username"
  git_user_email: "Git user email"
  
  memcache_servers:
    - server.1.memcache
    - server.2.memcache
  
  memcache_namespace: "app_memcache_ns"
  
```

## Generate your first git-backed model

```
rails g gitmodel:model Page
```

== Contributing to gitmodel-rails
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

== Copyright

Copyright (c) 2012 mcasimir. See LICENSE.txt for
further details.


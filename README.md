# Cancancan Security issue

Steps to reproduce:

1. Clone the repo `git clone https://github.com/barttenbrinke/cancancan_issue.git`
2. Run `bundle install`
3. Run `rails db:migrate`
4. Open `http://localhost:3000/working_documents_controller/new`
5. You should get a `CanCan::AccessDenied` exception, as cancancan checks `can?(:new, Document)` and you are not allowed in.
6. Open `http://localhost:3000/broken_documents_controller/new`
7. You should get a `CanCan::AccessDenied` exception, however cancancan just checks `can?(:read, Document)` and you are allowed to continue.

The Working Documents controller has:

```ruby
class WorkingDocumentsController < ApplicationController
  authorize_resource class: Document
```

The Broken Documents controller has:

```ruby
class BrokenDocumentsController < ApplicationController
  authorize_resource :document
```

Ability has:
```ruby
class Ability
  include CanCan::Ability

  def initialize(session)
    can :read, Document
  end
end
```

I believe this is a bug and a security issue.
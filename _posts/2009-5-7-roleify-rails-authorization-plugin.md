---
layout: post
title: Roleify, a rails authorization plugin
---
Ha! Een nieuwe rails plugin: [Roleify](http://github.com/10to1/roleify/tree/master), a rails authorization plugin.

Deze plugin komt uit een lopend project van [ons](http://10to1.be) en ik dacht zo, we zullen die maar ineens [opengooien](http://github.com/10to1/roleify/tree/master). Ik heb er nog wel wat plannen mee, dus het zal zeker hier en daar nog wijzigen.

**Here goes:**

Roleify
=======

A Rails authorization plugin

Dependent on [Clearance](http://github.com/thoughtbot/clearance/tree/master) (should be configurable in the future though)

Example
=======

Make sure your User object has a "role" attribute (String).

Add an initializer
------------------

{% highlight ruby %}
Roleify::Role.configure("role_a", "role_b") do
  {
    :role_a => { :issues =>  :all },
    :role_b => { :issues => "index" }
  }
end
{% endhighlight %}

In the example above "role_a" and "role_b" are the roles you are defining. The block contains the rules for these roles. There is no need to define an "admin" role, since it's added by default.

* Users with role "role_a" are allowed to access all of IssuesController actions.
* Users with role "role_b" are only allowed to access the index action of the IssuesController.
* Users with role "admin" are allowed to access all actions of all controllers.

The controller
--------------

{% highlight ruby %}
class IssuesController < ActionController::Base
  include Clearance::Authentication
  include Roleify::RoleifyableController
end
{% endhighlight %}

The User model
--------------

{% highlight ruby %}
class User < ActiveRecord::Base
  include Clearance::User
  include Roleify::RoleifyableModel
end
{% endhighlight %}

Extra's
=======

Constants: 

{% highlight ruby %}
Roleify::Role::ADMIN
Roleify::Role::ROLE_A
Roleify::Role::ROLE_B
{% endhighlight %}

Named scopes are automatically added:

{% highlight ruby %}
User.admins
User.role_as
User.role_bs
{% endhighlight %}


Questions? Shoot!
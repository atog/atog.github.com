---
layout: post
title: Spreadsheet on Rails
---
**What?**

A Rails plugin to generate xls documents by using rxls templates. [Spreadsheet on Rails](http://github.com/10to1/spreadsheet_on_rails)

Based on [Defv's railsxls](http://workswithruby.com/2008/10/railsxls-revived) [plugin](http://github.com/DefV/railsxls) without the Java part. The _without the java part_ was possible thanks to the excellent [spreadsheet gem](http://spreadsheet.rubyforge.org/).

Of met andere woorden het antwoord op: _"Kan ik daar ook een export naar Excel van krijgen?"_

**How?**

In de view - "index.xls.rxls"

{% highlight ruby %}
sheet = workbook.create_worksheet
sheet.name = "What's in a name?"
sheet.row(0).concat %w{Name Country Acknowlegement}
sheet[1,0] = 'Japan'
{% endhighlight %}

In de controller 

{% highlight ruby %}
def index
  @lines = Line.find(:all)

  respond_to do |format|
    format.html # index.html.erb
    format.xml  { render :xml => @lines }
    format.xls  { render :action => "index", :layout => false }
  end
end
{% endhighlight %}

Onder het motto, give something back, [is it available on GitHub](http://github.com/10to1/spreadsheet_on_rails)

dir = "/Users/atog/blog/content/"

def go(arr, value)
  if File.directory?(value)
    (Dir.entries(value)-%w(. ..)).each {|entry| go(arr, File.join(value, entry)) }
  else
    arr << value
  end
end

arr = []
go(arr, dir)

arr.each do |a|
  if m = /\/content\/(\d{4})\/(\d{1,2})\/(\d{1,2})\/([\w-]+)\/index\.txt/.match(a)
    gs = m.captures
    post = File.open(File.join("_posts", "#{gs[0]}-#{gs[1]}-#{gs[2]}-#{gs[3]}.textile"), "w")
    header = false
    IO.foreach(a) do |line| 
      if line =~ /---/ && !header 
        header = true
        post.write(line)
      elsif line =~ /---/ && header
        header = false
        post.write(line)
      end
      if line =~ /title:/
        post.write("layout: post\n")
        post.write(line.squeeze(" "))
      end
      unless header || line =~ /---/
        # ok, write file here
        post.write(line)
      else
        
      end
    end
    post.close
  end
end
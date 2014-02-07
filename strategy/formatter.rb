class Formatter
  def out_putreport(title, text)
    raise 'Abstract method called'
  end
end

class HTMLFormatter < Formatter
  def out_putreport(title, text)
    puts('<html>')
    puts('  <head>')
    puts("    <title>#{title}</title>")
    puts('  </head>')
    puts('  <body>')
    text.each do |line|
      puts("      <p>#{line}</p>")
    end
    puts('  </body>')
    puts('</html>')
  end
end

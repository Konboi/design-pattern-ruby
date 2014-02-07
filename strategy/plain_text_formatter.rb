class PlainTextFormatter < Formatter
  def out_putreport(title, text)
    puts("***** #{title} *****")
    text.each do |line|
      puts(line)
    end
  end
end

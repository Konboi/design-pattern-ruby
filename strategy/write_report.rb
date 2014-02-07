require './formatter'
require './plain_text_formatter'
require './report'

report = Report.new(HTMLFormatter.new)
report.out_putreport

report.formatter = PlainTextFormatter.new
report.out_putreport


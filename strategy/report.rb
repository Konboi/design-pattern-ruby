class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(formatter)
    @titile = '月次報告'
    @text = ['順調', '最高の調子']
    @formatter = formatter
  end

  def out_putreport
    @formatter.out_putreport(@titile, @text)
  end
end


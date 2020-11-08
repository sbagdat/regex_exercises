class PhoneNumberFormatter
  REGEX = /(?<country_code>\+?[\d\-]{1,5})*[x\-\s]*\(*(?<area_code>\d{3})\)*[x\-\s]*(?<exchange>\d{3})[x\-\s]*(?<subscriber>\d{4})/
  
  def initialize(number)
    @number = number.strip
  end

  def format_number  
    number.gsub(REGEX, '\k<country_code> (\k<area_code>) \k<exchange>-\k<subscriber>').strip
  end
  
  private
  
  attr_accessor :number
end
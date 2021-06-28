# A class to get random quote from json file
class Benefit
  attr_accessor :benefit

  def initialize
    @benefit = read_benefits_file
  end

  def getrandom_benefit
    @benefit.sample
  end

  private

  def read_benefits_file
    file = File.read(File.join(File.dirname(__FILE__), '/quotes.json'))
    JSON.parse(file)
  end
end

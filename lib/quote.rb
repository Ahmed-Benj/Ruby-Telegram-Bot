# A class to get random quote from json file
class Benefit
  @benefit = nil

  def initialize
    @benefit = readbenefitsfile
  end

  def read_benefits_file
    file = File.read(File.join(File.dirname(__FILE__), '/quotes.json'))
    JSON.parse(file)
  end

  def get_random_benefit
    @benefit.sample
  end
end

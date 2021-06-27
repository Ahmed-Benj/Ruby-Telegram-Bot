# A class to get random quote from json file
class Benefit
  @benefit = nil

  def initialize
    @benefit = readbenefitsfile
  end

  def readbenefitsfile
    file = File.read(File.join(File.dirname(__FILE__), '/quotes.json'))
    JSON.parse(file)
  end

  def getrandombenefit
    @benefit.sample
  end
end

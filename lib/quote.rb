# A class to get random quote from json file
class Benefit
  @benefit = nil

  def initialize
    @benefit = readbenefitsfile
  end

  def readbenefitsfile
    file = File.read('C:\Users\abenjmii\Desktop\Microverse\Projects ruby\Capstone Ruby\Ruby-Telegram-Bot\lib\quotes.json')
    JSON.parse(file)
  end

  def getrandombenefit
    @benefit.sample
  end
end

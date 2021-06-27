# A class to get random quote from json file
class Quote
  @quote = nil

  def initialize
    @quote = readquotesfile
  end

  def readquotesfile
    file = File.read('C:\Users\abenjmii\Desktop\quotes.json')
    JSON.parse(file)
  end

  def getrandomquote
    @quote.sample
  end
end

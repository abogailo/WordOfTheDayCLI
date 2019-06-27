
class WordOfTheDay::Scraper
  
  def self.scrape_wotd
      
    doc = Nokogiri::HTML(open("https://www.dictionary.com/e/word-of-the-day"))

      
      doc.css("li.wotd-item").each do |obj|
          wordy = "#{obj.attr("data-title")}"
          url =  "#{obj.attr("data-url")}"
          origin = obj.css("div.wotd-item__origin__text").text
          definition = obj.css("div.wotd-item__definition__text").text     
          pronunciation = obj.css("div.wotd-item__definition__pronunciation").text
          latest = "#{obj.attr("data-is-latest-post")}"
          WordOfTheDay::Word.new(wordy,url,origin,definition,pronunciation,latest)
          
        end
  end
end

#make a class hash to store all of the 

class WordOfTheDay::Scraper
  attr_accessor :word, :url, :origin, :definition, :pronunciation, :latest
  
  def self.scrape_wotd
      
    doc = Nokogiri::HTML(open("https://www.dictionary.com/e/word-of-the-day"))

    word_hash = []   
        #array of hashes https://stackoverflow.com/questions/17119413/adding-several-items-to-a-hash-in-ruby
      
      doc.css("li.wotd-item").each do |word|
        word_hash << {
          word: "#{word.attr("data-title")}",
          url:  "#{word.attr("data-url")}",
          origin: word.css("div.wotd-item__origin__text").text, 
          definition: word.css("div.wotd-item__definition__text").text,      
          pronunciation: word.css("div.wotd-item__definition__pronunciation").text,
          latest: "#{word.attr("data-is-latest-post")}"
          }
          
        end
        word_hash
  end
end
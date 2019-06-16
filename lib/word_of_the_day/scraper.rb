
class WordOfTheDay::Scraper
    attr_accessor :site, :word, :origin, :definition

    def self.scrape_wotd
      site = "https://www.dictionary.com/e/word-of-the-day"

    doc = Nokogiri::HTML(open(site))

        word_hash = []
        #array of hashes https://stackoverflow.com/questions/17119413/adding-several-items-to-a-hash-in-ruby
        doc.css("li.wotd-item").each do |word|
            word_hash << {
                word: "#{word.attr("data-title")}",
                url:  "#{word.attr("data-url")}",
                origin: word.css("div.wotd-item__origin__text").text, 
                definition: word.css("div.wotd-item__definition__text").text,
                pronunciation: word.css("div.wotd-item__definition__pronunciation").text
           
            }
        end
        word_hash.each do |item|
           puts "#{item[:word]}"
            end
    #word = doc.css("div.wotd-item__origin__text") 
   # pronunciation = doc.css("div.wotd-item__definition__pronunciation")
    #definition = doc.css("div.wotd-item__definition__text")
   # origin = doc.css("div.wotd-item__origin__text")
    
    #social_icon = doc.css("div.social-icon-container a").collect {|x| x.attribute("href").value}

  #  puts word.text

   # puts pronunciation.text
   # puts definition.text
   # puts origin.text
    end




end
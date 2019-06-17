#make a class hash to store all of the 

class WordOfTheDay::Scraper
  attr_accessor :wordybirdy
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
      
        #should return todays word
        word_hash.each do |item|
            latest = item[:latest]
            if latest.include? "true" #if data is latest post = true will pull todays date
                 #puts item.values will print all values in array of hashes
                 @wordybirdy = item[:word]
            end
         end
         puts @wordybirdy
         word_hash.each do |item|
          latest = item[:latest]
          if latest.include? "true" #if data is latest post = true will pull todays date
               #puts item.values will print all values in array of hashes
               puts item[:pronunciation]
          end
       end

       word_hash.each do |item|
        latest = item[:latest]
        if latest.include? "true" #if data is latest post = true will pull todays date
             #puts item.values will print all values in array of hashes
             puts item[:definition]
        end
     end

     word_hash.each do |item|
      latest = item[:latest]
      if latest.include? "true" #if data is latest post = true will pull todays date
           #puts item.values will print all values in array of hashes
           puts item[:origin]
      end
   end

         word_hash.each do |item|
         
          puts item[:word]
          puts item[:pronunciation]
          puts item[:definition]
          puts item[:origin]
          puts ""
            
         end

    end
end
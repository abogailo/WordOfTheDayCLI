
class WordOfTheDay::Scraper


    def self.mang
      puts "HEY MA!"
    end
#site = "https://www.dictionary.com/e/word-of-the-day"

#page = Nokogiri::HTML(open(site))

#results = page.css("div.wotd-item__origin__text") 

#puts results.text


# results.each{|r| puts r.css("").text}

 #enter a selector that you know you want to use in your scrape - i.e. div.main-content  or h1.title 

#if the result is an empty array [], the content you want is probably being loaded with javascript


#.text works on an array
#['href'] does NOT work on an array 


#if it's a really long result and you can't tell if the content you want is in there, try chaining .text to the end.
  #for example: 
    #page.css("div.main-content").text  OR  #page.css("div.main-content")[0].text


#"Finished running code"
end
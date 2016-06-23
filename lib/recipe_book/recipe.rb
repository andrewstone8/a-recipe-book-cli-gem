class RecipeBook::Recipe

  attr_accessor :name, :url, :description, :ingredients, :instructions

  def initialize(name = nil, url = nil)
    @name = name
    @url = url
  end

  def self.all
    @@all ||= scrape_recipes
  end


    def self.scrape_recipes
      doc = Nokogiri::HTML(open("http://food.ndtv.com/lists/be-your-own-bartender-10-best-cocktail-recipes-751639"))
      names = doc.search("strong a").collect {|n|n.text.strip}
      url = doc.search("span p strong a").collect{|x| x.attr('href')}
      arr = names.zip(url)
      arr.collect {|n|new(n[0],n[1])}
    end

    #def description
      #goes to url associated with drink
      #pulls description from page using nokogiri
      #takes data and assigns to @description instance variable
    #end

    #def ingredients
      #goes to url associated with drink
      #pulls ingredients from page using nokogiri
      #takes data and assigns to @ingredients instance variable
    #end

    #def instructions
      #goes to url associated with drink
      #pulls ingredients from page using nokogiri
      #takes data and assigns to @instructions instance variable
    #end

end # => end recipe class
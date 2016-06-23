class RecipeBook::Recipe

  attr_accessor :name, :url, :description, :ingredients, :instructions

  @@all = []

  def initialize(name = nil, url = nil)
    @name = name
    @url = url
  end

  def self.all
    @@all ||= scrape_recipes
  end

  def self.scrape_recipes
    doc = Nokogiri::HTML(open("http://food.ndtv.com/lists/be-your-own-bartender-10-best-cocktail-recipes-751639"))
    name = doc.search("strong a").text
    url = doc.search("span p strong a").attr('href')
    binding.pry
  end

  def description
    #goes to url associated with drink
    #pulls description from page using nokogiri
    #takes data and assigns to @description instance variable
  end

  def ingredients
    #goes to url associated with drink
    #pulls ingredients from page using nokogiri
    #takes data and assigns to @ingredients instance variable
  end

  def instructions
    #goes to url associated with drink
    #pulls ingredients from page using nokogiri
    #takes data and assigns to @instructions instance variable
  end

end # => end recipe class
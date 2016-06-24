class RecipeBook::Recipe

  attr_accessor :name, :url, :description, :ingredients, :instructions

  def initialize(name = nil, url = nil)
    @name = name
    @url = url
  end

  def self.all
    @@all ||= scrape_recipes
  end


  def self.find(id)
    self.all[id-1]
  end

  def self.scrape_recipes
    #go to url with list of drinks
    #pulls names of drinks from page
    #pulls url of drink page
    #creates a new instance of Recipe with name and url arguments

    doc = Nokogiri::HTML(open("http://food.ndtv.com/lists/be-your-own-bartender-10-best-cocktail-recipes-751639"))
    names = doc.search("span p strong a").collect {|n| n.text.strip}
    url = doc.search("span p strong a").collect {|url| url.attr("href")}
    arr = names.zip(url)
    arr.collect {|n|new(n[0],n[1])}
  end

  def description
    doc = Nokogiri::HTML(open(self.url))
    self.description = doc.search(".summaryrecipe").text
  end

  def ingredients
    doc = Nokogiri::HTML(open(self.url))
    self.ingredients = doc.search(".ingredient").text
  end

  def instructions
    doc = Nokogiri::HTML(open(self.url))
    self.instructions = doc.search(".instructions").text
  end

end # => end recipe class
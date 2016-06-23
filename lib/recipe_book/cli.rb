# CLI Controller

class RecipeBook::CLI

  def call
    welcome
    start
  end

  def welcome
    puts "----------- Welcome to Andrew's Recipe Book -----------"
    puts "             (courtesy of blueapron.com)"
    puts ''
  end

  def list_recipes
    puts "----------------- Blue Apron Recipes -----------------"
    puts ''
    puts "list recipes"
    #RecipeBook::Recipes.all.each.with_index(1) do |recipe, index|
      #puts "#{index}. #{recipe}"
    #end
  end

  def start
    puts ''
    list_recipes

    input = nil
    while input != "exit"
      puts ''
      puts ''
      puts ''
      puts ''
      puts "What looks tasty?"
      puts ''
      puts "Enter the number of the recipe you want to see."
      puts ''
      input = gets.strip.to_i

      #recipe = RecipeBook::Recipes.find(input)

      #show_recipe(recipe)
      puts ''
      puts "Want to see a different recipe? Enter 'yes' or 'no'."
      puts ''
      input = gets.strip.downcase
      case input
        when "yes"
          start
        when 'no'
          puts ''
          puts "Bon Appetit!"
          puts ''
          exit
        end
    end
  end # => end of start method

  def show_recipe(number)

  end

end # => end class
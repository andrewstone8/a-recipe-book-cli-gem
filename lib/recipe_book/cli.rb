# CLI Controller

class RecipeBook::CLI

  def call
    welcome
    start
  end

  def welcome
    puts "----------- Classic Mixed Drink Recipe Book -----------"
    puts ''
  end

  def list_recipes
    puts "--------------------- Drink List ---------------------"
    puts ''
    RecipeBook::Recipe.all.each.with_index(1) do |r, i|
      puts "#{i}. #{r.name}"
    end
  end

  def start
    puts ''
    list_recipes

    input = nil
    while input != "exit"
      puts ''
      puts ''
      puts "What are you in the mood for?"
      puts ''
      puts "Enter the number of the drink recipe you want to see."
      puts ''
      input = gets.strip.to_i

      recipe = RecipeBook::Recipe.find(input.to_i)

      show_recipe(recipe)
      puts ''
      puts "Want to see a different recipe? Enter 'yes' or 'no'."
      puts ''
      input = gets.strip.downcase
      case input
        when "yes"
          start
        when 'no'
          puts ''
          puts "Cheers!"
          puts ''
          exit
        end
    end
  end # => end of start method

  def show_recipe(recipe)

    puts ''
    puts "--------------------- #{recipe.name.upcase} ---------------------"
    puts ""
    puts "#{recipe.description}"
    puts ""
    puts "  Ingredients"
    puts "---------------"
    puts "#{recipe.ingredients}"
    puts ""
    puts "  Instructions"
    puts "---------------"
    puts "#{recipe.instructions}"

  end

end # => end class
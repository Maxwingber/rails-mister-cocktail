puts 'Delete previous Seeds'
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all
puts 'Delete previous Seeds Done'

puts 'Seed Ingredients'

Ingredient.create!(name: "Whisky")
Ingredient.create!(name: "Suger")
Ingredient.create!(name: "Orange")
Ingredient.create!(name: "Angostura")
Ingredient.create!(name: "Campari")
Ingredient.create!(name: "Vermuth Red")
Ingredient.create!(name: "Vodka")
Ingredient.create!(name: "Vermuth White")

puts 'Seed Ingredients Done'

puts 'Seed Cocktails'

cocktail_desc = "The Old Fashioned is a cocktail made by muddling sugar with \
bitters, then adding alcohol, originally whiskey but now sometimes brandy and \
finally a twist of citrus rind. It is traditionally served in a short, round, tumbler-like glass."

url = "https://duijuz32qudrm.cloudfront.net/None/None/OLD%20FASHIONED/recipeImage/Old-Fashioned-1024x683.jpg"

c = Cocktail.new(name: "Old Fashoned", description: cocktail_desc)
c.remote_photo_url = url
c.save!

puts 'Seed Cocktails Done'

puts 'Seed Doses'

Dose.create!(description: '2cl', cocktail: Cocktail.first, ingredient: Ingredient.first)
Dose.create!(description: '6cl', cocktail: Cocktail.first, ingredient: Ingredient.second)
Dose.create!(description: '3cl', cocktail: Cocktail.first, ingredient: Ingredient.third)

puts 'Seed Doses Done'

puts 'Delete previous Seeds'
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all
puts 'Delete previous Seeds Done'

puts 'Seed Ingredients'

Ingredient.create!(name: "lemon")
Ingredient.create!(name: "ice")
Ingredient.create!(name: "mint leaves")

puts 'Seed Ingredients Done'

puts 'Seed Cocktails'

cocktail_1_desc = "Lorem ipsum dolor sit amet,consectetur adipisicing elit.laud\
antiumsunt omnis dolores nisi quisquam vel nulla a."

cocktail_1_img = 'https://ls.imgix.net/recipes/thumbnails/Woodford-Reserve-Old-RESIZED.png?w=620&h=310&auto=compress,format&fit=crop'

Cocktail.create!(name: "Old Fashoned", description: cocktail_1_desc,
                 image: cocktail_1_img)

puts 'Seed Cocktails Done'

puts 'Seed Doses'

Dose.create!(description: '2cl', cocktail: Cocktail.first, ingredient: Ingredient.first)
Dose.create!(description: '6cl', cocktail: Cocktail.first, ingredient: Ingredient.second)
Dose.create!(description: '3cl', cocktail: Cocktail.first, ingredient: Ingredient.third)

puts 'Seed Doses Done'

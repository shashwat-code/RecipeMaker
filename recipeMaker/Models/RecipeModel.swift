//
//  RecipeModel.swift
//  recipeMaker
//
//  Created by Shashwat . on 07/01/22.
//

import Foundation

enum Category:String,CaseIterable{
    case breakfast = "breakfast"
    case soup = "soup"
    case salad = "salad"
    case appetizer = "appetizer"
    case main =  "main"
    case side = "side"
    case dessert = "dessert"
    case snack = "snack"
    case drink = "drink"
    
    
}

struct Recipe: Identifiable{
    let id = UUID()
    let name : String
    let image : String
    let description : String
    let ingredient : String
    let directions : String
    let category : Category.RawValue
    let datePublished : String
    let url : String
}

extension Recipe{
    static let all: [Recipe] = [
        Recipe(name: "Hearty Kale Salad with Warm Citrus and Wheat Berries",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/159516/Cherry-Tomato-Bruschetta-Tartines-wordpress-360x270-c.jpg",
               description: "Your standard kale salad gets a delicious upgrade with baked citrus segments, chewy wheat berries, and a zesty mustard vinaigrette. This recipe is particularly delicious in the winter months when you’re craving a warm meal that’s still packed with nutritious veggies. The heat from the cooked citrus and wheat berries gently wilts the kale and softens its earthy flavor so every bite is tender and satisfying. A simple garnish of fresh chives and crunchy walnuts really takes this salad to the next level!",
               ingredient: "8 kumquats, halved\n4 navel or Cara Cara oranges, peeled and sliced\n2 tangerines, peeled and sliced\n1 pink or red grapefruit, peeled and sliced\n2 tablespoons orange juice\n1 tablespoon pure maple syrup\n¼ teaspoon crushed red pepper\n4 cups chopped fresh kale, ribs removed\n3 cups cooked wheat berries\n2 tablespoons red wine vinegar\n2 tablespoons lemon juice\n1 tablespoon Dijon mustard\nSea salt, to taste\nFreshly ground black pepper, to taste\n2 tablespoons chopped fresh chives\n¼ cup chopped toasted walnuts",
               directions: "1.Preheat oven to 400°F. Place kumquats, oranges, tangerines, and grapefruit in a 15×10-inch baking pan. In a small bowl combine orange juice, maple syrup, and crushed red pepper. Drizzle over fruit. Bake 35 to 40 minutes or until fruit is just beginning to brown in places. Cool 5 minutes on a wire rack.\nIn a large bowl toss together kale and wheat berries. Add baked fruit. In a small bowl whisk together vinegar, lemon juice, and mustard. Drizzle over salad and toss gently to combine. Season with salt and black pepper. Sprinkle with chives and walnuts.",
               category: "salad",
               datePublished: "27-12-22",
               url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/hearty-kale-salad-with-warm-citrus-and-wheat-berries/"),
        
        Recipe(name: "Persimmon Cake with Pistachios",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/134555/baby-cakes-for-wordpress-688x387-c.jpg",
               description: "We’re at the tail-end of persimmon season, so try to scoop up some of the juicy red-orange fruits while you still can for this gooey, gorgeous dessert. (Tip: Check Asian markets, as they tend to more reliably carry persimmons in my experience.)",
               ingredient: "12 small dried persimmon slices\n2 tablespoons + ½ cup dried cranberries or chopped dried cherries\n2 tablespoons flaxseed meal\n2 cups whole wheat pastry flour\n1 teaspoon regular or sodium-free baking powder\n1 teaspoon pumpkin pie spice or apple pie spice\n½ teaspoon baking soda\n½ teaspoon sea salt\n1 cup mashed persimmon pulp (*see recipe intro)\n⅓ cup packed pure cane brown sugar\n2 tablespoons pure maple syrup\n1 teaspoon pure vanilla extract\n½ cup shelled whole pistachio nuts\n2 tablespoons shelled chopped pistachio nuts",
               directions: "Place persimmon slices and the 2 Tbsp. dried cranberries in two separate bowls. Cover with boiling water. Let stand 20 to 30 minutes to soften. Drain, reserving soaking liquids. In a saucepan bring 1 cup of the combined soaking liquids to boiling. Reduce heat to medium; simmer about 15 minutes or until reduced by half.\nPreheat oven to 350°F. Line twelve 2½-inch muffin cups with foil or silicone cup liners. Arrange soaked persimmon slices and soaked cranberries in bottoms of muffin cups.\nIn a bowl combine flaxseed meal and ¼ cup water. Let stand 10 minutes.\nIn a medium bowl whisk together the next five ingredients (through salt). In a separate bowl whisk together flaxseed mixture and the next four ingredients (through vanilla). Add wet mixture to flour mixture; stir just until combined. Stir in the ½ cup cranberries and ½ cup pistachios. Spoon into prepared muffin cups, spreading evenly.\nBake 25 to 30 minutes or until a toothpick inserted in centers comes out clean. Cool in cups on a wire rack 10 minutes. Remove from pan. Cool slightly on wire rack. Invert cakes and remove cup liners. Brush cakes with reduced soaking liquid and sprinkle with the chopped pistachios. Serve with remaining soaking liquid.",
               category: "dessert",
               datePublished: "17-11-20",
               url: "https://www.forksoverknives.com/recipes/vegan-desserts/persimmon-pistachio-baby-cakes/"),
        
        Recipe(name: "Greens and Things Sandwiches",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/153074/greens-things-sandwiches-wordpress-688x387-c.jpg",
               description: "A healthy homemade hummus, which features sauteed carrots and chopped fresh dill, delivers loads of flavor while helping to hold these fresh-and-hearty plant-based sandwiches together. The sliced pepperoncini add a tangy kick. If pepperoncini aren’t your thing, roasted red peppers would also be delicious here.",
               ingredient: "2 medium carrots, thinly sliced\n2 tablespoons chopped shallot\n1 clove garlic, minced\n1 15-oz. can no-salt-added chickpeas, rinsed and drained\n3 tablespoons lemon juice\n1 tablespoon chopped fresh dill\nFreshly ground black pepper, to taste\n8 slices country-style multigrain bread, toasted\n4 teaspoons toasted sunflower kernels\n1 cup thinly sliced cucumber\n¼ cup sliced pickled pepperoncini peppers, drained\n2 cups fresh baby kale and/or baby spinach",
               directions: "For veggie hummus, in a large skillet combine carrots, shallot, garlic, and ¼ cup water. Bring to simmering. Cover and cook on medium-low about 10 minutes or until carrots are tender. Transfer carrot mixture to a blender or food processor. Add chickpeas and lemon juice. Cover and blend or process until smooth, adding water 1 Tbsp. at a time to reach desired consistency. Transfer mixture to a bowl. Stir in dill and black pepper.\nSpread half of the bread slices with hummus. Top with sunflower kernels, cucumber, pepperoncinis, and kale. Top with the remaining bread slices.",
               category: "breakfast",
               datePublished: "21-04-2021",
               url: "https://www.forksoverknives.com/recipes/vegan-burgers-wraps/greens-and-things-sandwiches/"),
        
        Recipe(name: "Chickpea Avocado Salad",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/22903/Chickpea-Avocado-Salad-WP-version-688x387-c.jpg",
               description: "Serve this flavorful salad on a bed of greens for a complete meal. I like arugula with this dish, but feel free to use your favorite.",
               ingredient: "4 cups cooked chickpeas, or 2 (15-ounce) cans, drained and rinsed\n1 small red onion, peeled and diced small\n2 cloves garlic, peeled and minced\nZest of 1 lime and juice of 4 limes\n1 jalapeño pepper, minced (for less heat, remove the seeds)\n1⁄2 cup chopped cilantro\nSea salt to taste\n1 avocado, coarsely chopped",
               directions: "Combine all ingredients in a medium bowl and mix well. Add the avocado just before serving.",
               category: "salad",
               datePublished: "16-07-16",
               url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/chickpea-avocado-salad-2/"),
        
        Recipe(name: "Pear Spice Cake",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/100321/pear-spice-cake-wordpress-688x387-c.jpg",
               description: "Add interest to the holiday dessert table with this warmly spiced homemade cake, which is topped with pears and pecans. The beautifully arranged pear slices make it a spectacular way to end a meal. Or serve it at a festive brunch. ",
               ingredient: "2 medium pears\n1¾ cups whole wheat pastry flour\n1 Tbsp. cornstarch\n1½ tsp. baking soda\n1 tsp. ground ginger\n½ tsp. sea salt\n½ tsp. ground cinnamon\n¼ tsp. ground cloves\n1 cup unsweetened applesauce\n½ cup light molasses\n½ cup pure maple syrup\n1 tsp. pure vanilla extract\n¼ cup chopped pecans, toasted\nPowdered sugar",
               directions: "Preheat oven to 350°F. Core and cut 1 pear lengthwise into very thin slices. Peel and chop remaining pear.\nIn a large bowl stir together the next seven ingredients (through cloves). In a medium bowl stir together the next four ingredients (through vanilla) and 2 Tbsp. hot water. Add applesauce mixture to flour mixture; whisk just until well combined. Stir in chopped pear. Spoon batter into a 9-inch round or square silicone baking pan, spreading evenly. Arrange pear slices over batter. Sprinkle with pecans.\nBake 35 to 40 minutes or until a toothpick inserted in center comes out clean. Cool slightly in pan on a wire rack. If desired, remove cake from pan. Sprinkle cake lightly with powdered sugar. Serve warm or cooled.",
               category: "dessert",
               datePublished: "06-12-19",
               url: "https://www.forksoverknives.com/recipes/vegan-desserts/pear-spice-cake/"),
        
        Recipe(name: "15-Minute Watermelon Gazpacho",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/70989/Watermelon-Gazpacho-2-688x387-c.jpg",
               description: "This vegan watermelon gazpacho gets its spicy kick from fresh jalapeños and chili powder, while diced cucumber and jicama add a cool bit of crunch. Best of all, the recipe comes together in just 15 minutes. ",
               ingredient: "6 cups chopped watermelon (1-inch cubes)\n½ cup water or coconut water\n¼ cup freshly squeezed lime juice\n½ teaspoon seeded and diced jalapeño pepper\n½ teaspoon chili powder\n¼ teaspoon chipotle chili powder\nPinch of sea salt\n¾ cup seeded and diced cucumber\n¾ cup peeled and diced jicama\n1 tablespoon plus 1 teaspoon finely chopped fresh cilantro",
               directions: "Place the watermelon, water or coconut water, lime juice, jalapeño pepper, chili powder, chipotle chili powder, and salt in a blender and blend well.\nAdd the remaining ingredients and stir well before serving.",
               category: "soup",
               datePublished: "20-08-18",
               url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/vegan-watermelon-gazpacho/"),
        
        Recipe(name: "“Stuffinged” Sweet Potatoes",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/133439/Stuffinged-Sweet-Potatoes-Wordpress-688x387-c.jpg",
               description: "These scrumptious stuffed sweet potatoes are worthy of center stage on a holiday table. Cremini mushrooms and chickpeas add lusciousness to a classic bread stuffing that is loaded with traditional flavor. This recipe requires only about 30 minutes of active prep time.",
               ingredient: "4 large sweet potatoes, scrubbed and patted dry (about 3 lb.)\n1½ cups chopped fresh cremini mushrooms (4 oz.)\n½ cup chopped onion\n2 stalks celery, sliced (½ cup)\n2 cloves garlic, minced\n2 15-oz. cans no-salt-added chickpeas, rinsed and drained\n2 cups ½-inch whole wheat bread cubes, dried (see tip in intro)\n½ cup chopped fresh parsley\n1½ teaspoon poultry seasoning\nSea salt and freshly ground black pepper, to taste\n¼ to ⅓ cup low-sodium vegetable broth",
               directions: "Preheat oven to 400°F. Prick sweet potatoes all over with a fork. Place in a 3-qt. rectangular baking dish. Bake about 45 minutes or until just tender when pierced with a knife. Let stand until cool enough to handle.\nMeanwhile, for stuffing, in a large nonstick skillet cook mushrooms, onion, celery, and garlic over medium 5 minutes, stirring occasionally and adding water, 1 to 2 Tbsp. at a time, as needed to prevent sticking.\nIn a food processor combine mushroom mixture and chickpeas; pulse until chopped. Transfer to a bowl. Add bread cubes, parsley, poultry seasoning, salt, and pepper. Drizzle with broth, tossing just until moistened.\nCut sweet potatoes in half lengthwise. Using a sharp knife, score around potato flesh, leaving a ¼-inch shell and being careful not to cut through skin. Score in a crisscross to make ½-inch cubes. Gently scoop cubes out with a spoon. If necessary, cut any large pieces in half to make smaller cubes. Add cubes to stuffing mixture in bowl; gently fold to combine.\nArrange potato skin shells in the baking dish. Spoon stuffing into shells. Bake, uncovered, about 20 minutes or until browned and heated through. To transport, place baking dish in an insulated carrier with a hot pack.",
               category: "main",
               datePublished: "06-10-20",
               url: "https://www.forksoverknives.com/recipes/vegan-baked-stuffed/stuffing-stuffed-sweet-potatoes/")
        
        ]
}

//
//  AddNewRecipe.swift
//  recipeMaker
//
//  Created by Shashwat . on 08/01/22.
//

import SwiftUI

struct AddNewRecipe: View {
    @State var name:String = ""
    @State var category:Category = Category.main
    @State var description:String = ""
    @State var ingredients:String = ""
    @State var directions:String = ""
    @State var navigateToRecipe:Bool = false
    @EnvironmentObject var RecipesVM: RecipeViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Name".uppercased())) {
                    TextField("Recipe Name",text:$name)
                }
                Section(header: Text("Category".uppercased())) {
                    Picker("Category",selection: $category) {
                        ForEach(Category.allCases, id:\.self){ category in
                            Text(category.rawValue.capitalized)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                Section(header: Text("Description".uppercased())) {
                    TextEditor(text: $description)
                }
                Section(header: Text("Ingredients".uppercased())) {
                    TextEditor(text: $ingredients)
                }
                Section(header: Text("Directions".uppercased())) {
                    TextEditor(text: $directions)
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                    }

                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(isActive: $navigateToRecipe) {
                        RecipeView(recipe: RecipesVM.recipes.sorted{$0.datePublished > $1.datePublished}[0])
                    } label: {
                        Button {
                            navigateToRecipe.toggle()
                        } label: {
                            Label("Done",systemImage: "checkmark")
                        }
                        
                    }
                    .disabled(name.isEmpty)
                }
            }
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct AddNewRecipe_Previews: PreviewProvider {
    static var previews: some View {
        AddNewRecipe()
    }
}
  
extension AddNewRecipe{
    func saveRecipe(){
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-mm-yyyy"
        let datePublished = dateFormatter.string(from: now)
        let recipe = Recipe(name: name, image: "", description: description, ingredient: ingredients, directions: directions, category: category.rawValue, datePublished: datePublished, url: "")
        RecipesVM.appendRecipe(recipe: recipe)
    }
}

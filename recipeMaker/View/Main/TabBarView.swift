//
//  TabBarView.swift
//  recipeMaker
//
//  Created by Shashwat . on 07/01/22.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            CategoriesView()
                .tabItem {
                    Label("Categories",systemImage: "square.fill.text.grid.1x2")
                }
            NewRecipes()
                .tabItem {
                    Label("New",systemImage: "plus")
                }
            FavoriteView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
            SettingsView()
                .tabItem{
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .environmentObject(RecipeViewModel())
    }
}

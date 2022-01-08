//
//  recipeMakerApp.swift
//  recipeMaker
//
//  Created by Shashwat . on 07/01/22.
//

import SwiftUI

@main
struct recipeMakerApp: App {
    @StateObject var recipeViewModel = RecipeViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipeViewModel)
        }
    }
}

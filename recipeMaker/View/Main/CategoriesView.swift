//
//  CategoriesView.swift
//  recipeMaker
//
//  Created by Shashwat . on 07/01/22.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(Category.allCases, id:\.self){ category in
                    NavigationLink {
                       CategoryView(category: category)
                    } label: {
                        Text(category.rawValue.capitalized + "s")
                    }

                }
            }
                .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}

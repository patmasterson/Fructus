//
//  Onboarding.swift
//  Fructus
//
//  Created by Patrick Masterson on 10/1/22.
//

import SwiftUI

struct Onboarding: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding(fruits: fruitsData)
    }
}

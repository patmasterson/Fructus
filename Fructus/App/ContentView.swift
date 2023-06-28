//
//  ContentView.swift
//  Fructus
//
//  Created by Patrick Masterson on 9/28/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isSettingsShowing = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                    
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isSettingsShowing = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isSettingsShowing) {
                        SettingsView()
                    }
            )
            .listStyle(.plain)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 13 Pro")
        ContentView().preferredColorScheme(.dark)
    }
}

//
//  ContentView.swift
//  JokesApp-SwiftUI
//
//  Created by Gizem Zorlu on 29.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = JokesViewModel()
    
    var body: some View {
        VStack {
            NavigationView {
                List(viewModel.jokes) { element in
                    Text(element.joke)
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}

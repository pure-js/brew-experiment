//
//  ContentView.swift
//  Brew Experiment Watch App
//
//  Created by Sea on 8/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(brewMethods, id: \.self) { method in
                NavigationLink(method, value: method)
            }
            .navigationDestination(for: String.self, destination: BrewSetupView.init)
            .navigationTitle("Select a brewing method")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

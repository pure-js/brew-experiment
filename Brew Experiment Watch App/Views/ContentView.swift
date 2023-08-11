//
//  ContentView.swift
//  Brew Experiment Watch App
//
//  Created by Sea on 8/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            List {
                NavigationLink("V60") { BrewSetupView(method: brewMethods[0]) }
                NavigationLink("AeroPress") { BrewSetupView(method: brewMethods[1]) }
            }
            
        }
    }
}

#Preview {
    ContentView()
}

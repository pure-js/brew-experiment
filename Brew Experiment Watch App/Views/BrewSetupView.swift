//
//  ContentView.swift
//  Brew Experiment Watch App
//
//  Created by Sea on 8/10/23.
//

import SwiftUI

enum Flavor: String, CaseIterable, Identifiable {
    case chocolate, vanilla, strawberry
    var id: Self { self }
}

enum Topping: String, CaseIterable, Identifiable {
    case nuts, cookies, blueberries
    var id: Self { self }
}

extension Flavor {
    var suggestedTopping: Topping {
        switch self {
        case .chocolate: return .nuts
        case .vanilla: return .cookies
        case .strawberry: return .blueberries
        }
    }
}

struct BrewSetupView: View {
    var method: String
    
    struct props {
        var coffee: Int = 17
        var water: Int = 272
        var totalTime: Int = 331
    }
    
    @State private var suggestedTopping: Topping = .nuts
    @State private var selectedFlavor: Flavor = .chocolate

    var body: some View {
        VStack {
            Text(method).font(.title)
            Picker("Flavor", selection: $suggestedTopping) {
                    ForEach(Flavor.allCases) { flavor in
                        Text(flavor.rawValue.capitalized)
                            .tag(flavor.suggestedTopping)
                    }
                }
                HStack {
                    Text("Suggested Topping")
                    Spacer()
                    Text(suggestedTopping.rawValue.capitalized)
                        .foregroundStyle(.secondary)
                }
            Text("Coffee ").font(.system(size: 18))
            + Text("17g").font(.system(size: 18, weight: .bold))
            Text("Water ").font(.system(size: 18))
            + Text("272g").font(.system(size: 18, weight: .bold))
            Text("Brew time ").font(.system(size: 18))
            + Text("3:31").font(.system(size: 18, weight: .bold))
            NavigationLink("Start") { BrewProcessView() }
        }
        .padding()
    }
}

struct BrewSetupView_Previews: PreviewProvider {
    static var previews: some View {
        BrewSetupView(method: brewMethods[0])
    }
}

//
//  BrewProcessView.swift
//  Brew Experiment Watch App
//
//  Created by Sea on 8/11/23.
//

import SwiftUI

struct BrewProcessView: View {

    struct props {
        var coffee: Int = 17
        var water: Int = 272
        var totalTime: Int = 331
    }
    
    @State var timeRemaining: Int = 3
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        VStack(spacing: 30){
            Text("Timer: \(timeRemaining)").bold().fontWeight(.heavy)
                .onReceive(timer){_ in
                    if timeRemaining>0{
                        timeRemaining -= 1
                    }
                    else
                    {
                        timeRemaining = 0
                    }
                }
               }
        
    }
}

struct BrewProcessView_Previews: PreviewProvider {
    static var previews: some View {
        BrewProcessView()
    }
}

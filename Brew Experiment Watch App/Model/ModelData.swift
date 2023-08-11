//
//  ModelData.swift
//  Brew Experiment
//
//  Created by Sea on 8/11/23.
//

import Foundation

//var methods: [BrewMethod] = load("./brewData.json")

//struct AeroPress {
//    var id = 0
//    var name = "AeroPress"
//}

//struct V60 {
//    var id = 1
//    var name = "V60"
//}

var brewMethods: [String] = ["AeroPress", "V60"];
//brewMethods.append(AeroPress)
//brewMethods.append(V60)

//var methods: [BrewMethod] = brewMethods;




//func load<T: Decodable>(_ filename: String) -> T {
//    let data: Data
//
//    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
//    else {
//        fatalError("Couldn't find \(filename) in main bundle.")
//    }
//
//    do {
//        data = try Data(contentsOf: file)
//    } catch {
//        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
//    }
//
//    do {
//        let decoder = JSONDecoder()
//        return try decoder.decode(T.self, from: data)
//    } catch {
//        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
//    }
//}

//
//  RocketDataModel.swift
//  SpaceX
//
//  Created by Владислав Лымарь on 23.08.2022.
//

import Foundation

struct Steps{
    var countEngine, countFuel, timeCombition: String

}
struct RocketModel{
    var nameRocket, heightRocket, diametrRocket, massRocket, loadRocket: String
    var firstStart, countryStart, costStart: String
    var firstSteps: Steps
    var secondSteps: Steps
   
}

var arrayRocket: [RocketModel] = [
    RocketModel(nameRocket: "Falcon 1", heightRocket: "22.25", diametrRocket: "1.68", massRocket: "30146", loadRocket: "450", firstStart: "24 марта 2006", countryStart: "Republic of the Islands", costStart: "6700000", firstSteps: Steps(countEngine: "1", countFuel: "44.3", timeCombition: "169") , secondSteps: Steps(countEngine: "1", countFuel: "3.38", timeCombition: "378")),
    RocketModel(nameRocket: "Falcon 9", heightRocket: "70.0", diametrRocket: "3.7", massRocket: "549054", loadRocket: "22800", firstStart: "04 июня 2010", countryStart: "United States", costStart: "50000000", firstSteps: Steps(countEngine: "9", countFuel: "385.0", timeCombition: "162") , secondSteps: Steps(countEngine: "1", countFuel: "90.0", timeCombition: "397")),
    RocketModel(nameRocket: "Falcon Heavy", heightRocket: "70.0", diametrRocket: "12.2", massRocket: "1420788", loadRocket: "63800", firstStart: "06 февраля 2018", countryStart: "United States", costStart: "90000000", firstSteps: Steps(countEngine: "27", countFuel: "1155.0", timeCombition: "162") , secondSteps: Steps(countEngine: "1", countFuel: "90.0", timeCombition: "397")),
    RocketModel(nameRocket: "Starship", heightRocket: "118.0", diametrRocket: "9.0", massRocket: "1335000", loadRocket: "150000", firstStart: "01 декабря 2021", countryStart: "United States", costStart: "70000000", firstSteps: Steps(countEngine: "37", countFuel: "3300.0", timeCombition: "nil") , secondSteps: Steps(countEngine: "6", countFuel: "1200.0", timeCombition: "nil"))
]

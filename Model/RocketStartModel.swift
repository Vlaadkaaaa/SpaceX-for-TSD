//
//  RocketStartModel.swift
//  SpaceX
//
//  Created by Владислав Лымарь on 23.08.2022.
//

import Foundation

struct RocketStart{
    var nameRocketStart: String
    var dateStart: String
    var luckyStart: Bool
}

var arrayStartRocket: [[RocketStart]] = [
    [RocketStart(nameRocketStart: "Falcon Sat", dateStart: "25 марта 2006", luckyStart: false),RocketStart(nameRocketStart: "RatSat", dateStart: "29 сентября", luckyStart: true)],
    [RocketStart(nameRocketStart: "Falcon 9 Test Flight", dateStart: "05 июня 2010", luckyStart: true), RocketStart(nameRocketStart: "Amos-6", dateStart: "01 сентября", luckyStart: false)],
    [RocketStart(nameRocketStart: "Falcon Heavy Test Flight", dateStart: "07 февраля 2018", luckyStart: true),
     RocketStart(nameRocketStart: "STP-2", dateStart: "25 июня 2019", luckyStart: true)],
    [RocketStart(nameRocketStart: "SN15", dateStart: "6 мая 2021", luckyStart: true)]
]

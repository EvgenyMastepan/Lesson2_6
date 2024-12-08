//
//  Model.swift
//  Lesson2_6
//
//  Created by Evgeny Mastepan on 07.12.2024.
//

import Foundation

struct Card {
    var titul: String
    var image: String
    var title: String
    var extext: String
    var maintext: String
    var btn: String
    
    static var cards: [Card] {
        [
            Card(titul: "Engine since 2017", image: "1", title: "Milwaukee 8", extext: "107, 114, 117, and 121 engines", maintext: "The Harley-Davidson Milwaukee-Eight engine is the ninth generation of \"big twin\" engines developed by the company, but only Harley's fourth all-new Big Twin in 80 years, first introduced in 2016.", btn: ""),
            Card(titul: "Engine since 1998", image: "2", title: "Twin Cam", extext: "88B, 96B, 103 and 110 Engines", maintext: "The Harley-Davidson Twin Cam are motorcycle engines made by Harley-Davidson from 1998 to 2017. ", btn: ""),
            Card(titul: "Engine since 1984", image: "3", title: "Evolution", extext: "Sportster and BigTwin Engines", maintext: "The Evolution engine (popularly known as Evo and sometimes as Blockhead ) is an air-cooled, 45-degree, V-twin engine manufactured from 1984 by Harley-Davidson for the company's motorcycles. ", btn: ""),
            Card(titul: "Engine since 1966", image: "4", title: "Shovelhead", extext: "BigTwin Engines", maintext: "The Shovelhead engine is a motorcycle engine that was produced by Harley-Davidson from 1966 to 1984, built as a successor to the previous Panhead engine.", btn: "")
        ]
    }
}

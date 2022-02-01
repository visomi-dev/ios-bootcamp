//
//  DrinksData.swift
//  DrinkApp
//
//  Created by Michael Villalba Sotelo on 31/01/22.
//

import Foundation

struct DrinkDataModel: Decodable {
    let idDrink: String
    let name: String
    let type: String
    let glassType: String
    let instructions: String
    let image: URL
    let ingredients: String
    let measure: String
}


struct DrinksDataModel: Decodable {
    let drinks: [DrinksDataModel]
}

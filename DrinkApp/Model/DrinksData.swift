//
//  DrinksData.swift
//  DrinkApp
//
//  Created by Michael Villalba Sotelo on 31/01/22.
//

import Foundation

struct DrinkDataModel: Decodable {
    let idDrink: String
    let strDrink: String
    let strCategory: String?
    let strGlass: String?
    let strInstructions: String?
    let strImageSource: String?
    let strIngredient1: String?
    let strMeasure1: String?
}


struct DrinksDataModel: Decodable {
    let drinks: [DrinkDataModel]
}

//
//  DrinkManager.swift
//  DrinkApp
//
//  Created by Adriana Limon on 1/28/22.
//
import Foundation


struct DrinkManager {
  let drinkUrl = "https://www.thecocktaildb.com/api/json/v1/1/search.php?"
  func getDrink(drinkName: String) {
    let urlString = "\(drinkUrl)s=\(drinkName)"
    perfomRequest(urlString: urlString)
  }
    
    
  func perfomRequest(urlString: String) {
    // Hacemos los 4 pasos
    //1.Crear un URL
    if let url = URL(string: urlString) {
      //2. Create a URLSession
      let session = URLSession(configuration: .default)
      //3. Darle la session una tarea
      let task = session.dataTask(with: url) {(data, response, error)
        in
        if error != nil{
          print(error)
          return
        }
        if let safeData = data {
          let dataString = String(data: safeData, encoding: .utf8)
          print(dataString)
        }
      }
      //4. empezar la tarea
      task.resume()
    }
      
      func parseJSON(drinks: Data) {
              let decoder = JSONDecoder()
              do {
                  let decodedData = try decoder.decode(Drinks.self, from: drinks)
                  print(decodedData.idDrink)
                  print(decodedData.name)
                  print(decodedData.type)
                  print(decodedData.glassType)
                  print(decodedData.instructions)
                  print(decodedData.image)
                  print(decodedData.ingredients)
                  print(decodedData.measure)
                  
              } catch {
                  print(error)
              }
          }
}
}

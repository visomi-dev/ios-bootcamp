import Foundation

struct Drinks: Decodable{
    
    let idDrink: String
    let name: String
    let type: String
    let glassType: String
    let instructions: String
    let image: URL
    let ingredients: String
    let measure: String
    
}

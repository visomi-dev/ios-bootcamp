//
//  ViewController.swift
//  DrinkApp
//
//  Created by Jonathan Avila on 27/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    var searchDrink : UITextField?
    var searchButton : UIButton?
    var drinkManagerr = DrinkManager()
   // var newSearchButton = Drink()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initUI()
    }
    
    func initUI(){
        searchDrink = UITextField(frame: CGRect(x: 0, y: 100, width: 200, height: 40))
        searchDrink?.backgroundColor = .clear
        searchDrink?.placeholder = "Ingresa tu bebida"
        searchDrink?.layer.cornerRadius = 10
        searchDrink?.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        searchDrink?.layer.borderWidth = 1
        searchDrink?.center.x = self.view.center.x
        
        view.addSubview(searchDrink!)
        
        
        searchButton = UIButton(frame: CGRect(x: 0, y: 145, width: 100, height: 40))
        searchButton?.setTitle("Buscar", for: .normal)
        searchButton?.backgroundColor = .blue
        searchButton?.center.x = self.view.center.x
        
        view.addSubview(searchButton!)
        
        
        let tapRegisterButton = UITapGestureRecognizer(target: self, action: #selector(newSearchButton))
        
        searchButton?.addGestureRecognizer(tapRegisterButton)
        
    }
    
    @objc func newSearchButton(){
        drinkManagerr.getDrink(drinkName: searchDrink?.text ?? "")
    }

}


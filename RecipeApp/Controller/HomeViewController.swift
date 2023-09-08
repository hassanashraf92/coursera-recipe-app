//
//  ViewController.swift
//  RecipeApp
//
//  Created by Hassan on 09/08/2023.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: - Outlets
    
    
    // MARK: - Variables
    
    private var recipes = [Recipe]()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }


    // MARK: - Fetch data from JSON file
    
    private func fetchData() {
        do {
            // Load the JSON data from the file
            if let filePath = Bundle.main.path(forResource: "Recipes", ofType: "json") {
                let fileUrl = URL(fileURLWithPath: filePath)
                let jsonData = try Data(contentsOf: fileUrl)
                
                // Decode the JSON data into RecipeData
                let recipeData = try JSONDecoder().decode(RecipesData.self, from: jsonData)
                self.recipes = recipeData.recipes
            } else {
                print("recipes.json file not found")
            }
        } catch {
            print("Error decoding JSON: \(error)")
        }
    }

}


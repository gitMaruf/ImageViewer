//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Copyright © 2016 Code School. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    private var products: [Product]?
    private let identifer = "productCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        products = [
            Product(name: "This is my first image", ImageName: "One", largeImageName: "OneX"),
            Product(name: "This is my second image", ImageName: "Two", largeImageName: "TwoX")
        ]
    }
    
    
    
  
//}

//extension ProductsTableViewController {
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int
    {
        return products?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifer, for: indexPath)
        guard let products = products else { return cell }
        
        cell.textLabel?.text = products[indexPath.row].name
        
        if let imageName = products[indexPath.row].ImageName {
            cell.imageView?.image = UIImage(named: imageName)
        }
        
        return cell;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showProduct"{
            if let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPath(for: cell),
                let productVC = segue.destination as? ProductViewController{
                productVC.product = products?[indexPath.row]
            }
        }
    }
    

    
    
    
}

//
//  ViewController.swift
//  VirusView
//
//  Created by 2020-2 on 28/02/20.
//  Copyright © 2020 UNAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var pictures = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contents(atPath: path)
        for item in items{
            if ite.hasPrefix("virus"){
                pictures.append(item)
                }
            }
        print(pictures)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection secion: Int) -> {
        return pictures.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableView {
        let cell = tableview.dequeueReusableCell(withIdentifier: "picture", for: indexPath)
        cell.textLabel?.text = pictures(indexPath.row)
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        if let vc =  storyboard?.instantiateViewController(withIdentifier: "Detal") as? DetalViewController{
            vc.selectedImage = pictures(indexPath.row)
            
            navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
}

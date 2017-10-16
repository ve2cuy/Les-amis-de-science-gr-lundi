//
//  ViewController.swift
//  Les amis de la science
//
//  Créé par Alain Boudreault le 2014-09-28.
//  Copyright (c) 2014-2016 Alain. All rights reserved.
//  ------------------------------------------------------------------
//  m-a-j: 2016.08.23 - conversion du projet vers Xcode 8 et swift 3
//         2016.10.16 - fin de la conversion vers swift 3
//         2017.10.15 - conversion vers Xcode 9 et swift 4
//  ------------------------------------------------------------------

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    // ou bien: Array<Dictionary<String,String>>
    let lesAmisDeLaScienceData:[Dictionary<String,String>] = [
        
        ["nom":"Albert Einstein",       "photo":"Albert Einstein.jpg",          "texte":"lorem ipsum01 ...", "naissance":"1900"],
        ["nom":"Albert Jacquard",       "photo":"Albert Jacquard.jpg",          "texte":"lorem ipsum02 ...", "naissance":"1900"],
        ["nom":"Blaise Pascal",         "photo":"Blaise Pascal.jpg",            "texte":"lorem ipsum03 ...", "naissance":"1900"],
        ["nom":"Braun",                 "photo":"Braun.jpg",                    "texte":"lorem ipsum04 ...", "naissance":"1900"],
        ["nom":"Christian Huygens",     "photo":"Christian Huygens.jpg",        "texte":"lorem ipsum05 ...", "naissance":"1900"],
        ["nom":"Daniel Fahrenheit",     "photo":"Daniel Fahrenheit.jpg",        "texte":"lorem ipsum06 ...", "naissance":"1900"],
        ["nom":"Dennis Ritchie",        "photo":"Dennis Ritchie.jpg",           "texte":"lorem ipsum07 ...", "naissance":"1900"],
        ["nom":"Galileo Galilei",       "photo":"Galilée.jpg",                  "texte":"lorem ipsum08 ...", "naissance":"1900"],
        ["nom":"Henri Becquerel",       "photo":"Henri Becquerel.jpg",          "texte":"lorem ipsum09 ...", "naissance":"1900"],
        ["nom":"Heinrich Hertz",        "photo":"Hertz.jpg",                    "texte":"lorem ipsum10 ...", "naissance":"1900"],
        ["nom":"Jean Perrin",           "photo":"Jean Perrin.jpg",              "texte":"lorem ipsum11 ...", "naissance":"1900"],
        ["nom":"Karl Guthe Jansky",     "photo":"Karl Guthe Jansky.jpg",        "texte":"lorem ipsum12 ...", "naissance":"1900"],
        ["nom":"Marie Curie",           "photo":"Marie Curie.jpg",              "texte":"lorem ipsum13 ...", "naissance":"1900"],
        ["nom":"James Clerk Maxwell",   "photo":"maxwell.jpg",                  "texte":"lorem ipsum14 ...", "naissance":"1900"],
        ["nom":"Steve Jobs",            "photo":"Steve Jobs.jpg",               "texte":"lorem ipsum15 ...", "naissance":"1900"],
        ["nom":"Wilhelm Conrad Rontgen","photo":"Wilhelm Conrad Rontgen.jpg",   "texte":"lorem ipsum16 ...", "naissance":"1900"],
        ] // lesAmisDeLaScienceData
    
    
    
    // *****************************************************
    override func viewDidLoad()
        // *****************************************************
    {
        super.viewDidLoad()
        
//        if let nomFichierImage = lesAmisDeLaScienceData[0]["photo"] {
//            let uneImage = UIImageView(image: UIImage(named: nomFichierImage))
//            view.addSubview(uneImage)
//        } // if let
        
    } // viewDidLoad
    
    //MARK:- Méthodes du protocole UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lesAmisDeLaScienceData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celluleCourante = UITableViewCell()
        let indice = indexPath.row
        celluleCourante.textLabel?.text = lesAmisDeLaScienceData[indice]["nom"]
        
        if let nomFichierImage = lesAmisDeLaScienceData[indice]["photo"] {
            celluleCourante.imageView?.image = UIImage(named:nomFichierImage)
        }
        return celluleCourante
    }
    
    
    
}  // ViewController

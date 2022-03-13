//
//  DetailsFilme.swift
//  Meus Filmes Aula
//
//  Created by Fabiano De Souza Pereira on 30/01/22.
//

import Foundation
import UIKit

class DetailsfilmeViewControler: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var descricao: UILabel!
    
    var Filme: Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = Filme.image
        titulo.text = Filme.title
        descricao.text = Filme.description
    }
    
}

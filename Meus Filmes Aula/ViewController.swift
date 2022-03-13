//
//  ViewController.swift
//  Meus Filmes Aula
//
//  Created by Fabiano De Souza Pereira on 26/01/22.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        filme = Filme(title: "Filme 1", description: "Descricao do filme 1", image: #imageLiteral(resourceName: "filme1"))
        filmes.append(filme)
        
        filme = Filme(title: "Filme 2", description: "Descricao do filme 2", image: #imageLiteral(resourceName: "filme2"))
        filmes.append(filme)
        
        filme = Filme(title: "Filme 3", description: "Descricao do filme 3", image: #imageLiteral(resourceName: "filme3"))
        filmes.append(filme)
        
        filme = Filme(title: "Filme 4", description: "Descricao do filme 4", image: #imageLiteral(resourceName: "filme4"))
        filmes.append(filme)
        
        filme = Filme(title: "Filme 5", description: "Descricao do filme 5", image: #imageLiteral(resourceName: "filme5"))
        filmes.append(filme)
        
        filme = Filme(title: "Filme 6", description: "Descricao do filme 5", image: #imageLiteral(resourceName: "filme6"))
        filmes.append(filme)
        
        filme = Filme(title: "Filme 7", description: "Descricao do filme 5", image: #imageLiteral(resourceName: "filme7"))
        filmes.append(filme)
        
        filme = Filme(title: "Filme 8", description: "Descricao do filme 5", image: #imageLiteral(resourceName: "filme8"))
        filmes.append(filme)
        
        filme = Filme(title: "Filme 9", description: "Descricao do filme 5", image: #imageLiteral(resourceName: "filme9"))
        filmes.append(filme)
        
        filme = Filme(title: "Filme 10", description: "Descricao do filme 5", image: #imageLiteral(resourceName: "filme10"))
        filmes.append(filme)

        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme: Filme = filmes[indexPath.row]
        let celulaReuso = "celulaReuso"
       
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
        celula.titleCelula.text = filme.title
        celula.descriptionCelula.text = filme.description
        celula.imageCelula.image = filme.image
    
        celula.imageCelula.layer.cornerRadius = 42
        celula.imageCelula.clipsToBounds = true
        
        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fromFilmesToDescricao" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let filmeSelected = self.filmes[ indexPath.row ]
                let viewControllerdestino = segue.destination as! DetailsfilmeViewControler
                viewControllerdestino.Filme = filmeSelected
            }
        }
    }
}


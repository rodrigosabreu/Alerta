//
//  ViewController.swift
//  Alerta
//
//  Created by Rodrigo Abreu on 03/11/17.
//  Copyright © 2017 Rodrigo Abreu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func abrirAlerta(_ sender: Any) {
        //criacao do alerta
        let alerta = UIAlertController(title: "Adicionar contato", message: "Deseja adicionar contato?", preferredStyle: .actionSheet)
        
        //botoes - com acao
        /*let confirmar = UIAlertAction(title: "Confirmar", style: .default) { (acao) in
            print("Botão confirmar pressionado!")
        }*/
        
        //botoes sem acao - a acao ficará no completion do present
        let confirmar = UIAlertAction(title: "Confirmar", style: .default, handler:nil)
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive, handler:nil)
        
        alerta.addAction(confirmar)
        alerta.addAction(cancelar)
        
        //exibir alerta
        present(alerta, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  IMC
//
//  Created by Julia Teles on 09/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldPeso: UITextField!
    @IBOutlet weak var textFieldAltura: UITextField!
    @IBOutlet weak var labelResultado: UILabel!
    @IBOutlet weak var imageView: UIView!
    @IBOutlet weak var imageResultado: UIImageView!
    
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func buttonCalcular(_ sender: Any) {
        if let peso = Double(textFieldPeso.text!),
           let altura = Double(textFieldAltura.text!) {
            imc = peso / (altura * altura)
            showResults()
        }
    }
    
    func showResults () {
        var resultado: String = ""
        var imagem: String = ""
        
        switch imc {
        case 0..<16:
            resultado = "Magreza"
            imagem = "abaixo"
        case 16..<18.5:
            resultado = "Abaixo do Peso"
            imagem = "abaixo"
        case 18.5..<25:
            resultado = "Peso Ideal"
            imagem = "ideal"
        case 25..<30:
            resultado = "Sobrepeso"
            imagem = "sobre"
        default:
            resultado = "Obesidade"
            imagem = "obesidade"
            
        }
        
        labelResultado.text = resultado
        imageResultado.image = UIImage(named: imagem)
        imageView.isHidden = false
        
    }
    
    
}



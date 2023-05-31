//
//  ViewController.swift
//  Ziutzelle Grajales
//
//  Created by Ziutzel grajales on 31/05/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var nombreTF: UITextField!
    
    @IBOutlet weak var telefonoTF: UITextField!
    
    @IBOutlet weak var botonInicio: UIButton!
    
    @IBOutlet weak var viewCentral: UIView!
    
    @IBOutlet weak var correoTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        asignarColorVista()
        configurarBoton()
        view.backgroundColor = .white
    }
    
    @IBAction func Iniciassesión(_ sender: UIButton) {
        
        performSegue(withIdentifier: "UsuariosViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "UsuariosViewController" {
            if let usuariosViewCotroller = segue.destination as? UsuariosViewController {
                usuariosViewCotroller.name = nombreTF.text
                usuariosViewCotroller.email = correoTF.text
                usuariosViewCotroller.phone = telefonoTF.text
                usuariosViewCotroller.modalPresentationStyle = .fullScreen
                
            }
        }
    }
    
    @IBAction func textFieldDidChange(_ sender: UITextField) {
        validarCampos()
    }
}

    extension LoginViewController {
        
        func mostrarAlerta(titulo: String , mensaje : String ) {
            
            let alerta = UIAlertController(title: "Atención", message: mensaje, preferredStyle: .alert)
            
            let accionAceptar = UIAlertAction(title: "Aceptar", style: .default) { _ in
                //Hacer algo
            }
            
            alerta.addAction(accionAceptar)
            present(alerta, animated: true)
        }
        
        func asignarColorVista() {
            
            let red: CGFloat = 164/255
            let green: CGFloat = 197/255
            let blue: CGFloat = 244/255
            let color = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
            viewCentral.backgroundColor = color
        }
        
        func configurarBoton() {
            
            botonInicio.isEnabled = false
            botonInicio.backgroundColor = UIColor(red: 73/255, green: 74/255, blue: 75/255, alpha: 1.0)
            botonInicio.setTitleColor(.white, for: .disabled)
            botonInicio.setTitleColor(.black, for: .normal)
        }
        
        func validarCampos() {
            
            if let nombre = nombreTF.text, !nombre.isEmpty,
               let correo = correoTF.text, !correo.isEmpty,
               let telefono = telefonoTF.text, !telefono.isEmpty {
                botonInicio.isEnabled = true
                botonInicio.backgroundColor = UIColor(red: 10/255, green: 74/255, blue: 163/255, alpha: 1.0)
            } else {
                botonInicio.isEnabled = false
                botonInicio.backgroundColor = UIColor(red: 73/255, green: 74/255, blue: 75/255, alpha: 1.0)
            }
        }
    }

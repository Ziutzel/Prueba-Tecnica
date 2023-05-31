//
//  UsuariosViewController.swift
//  Ziutzelle Grajales
//
//  Created by Ziutzel grajales on 31/05/23.
//

import UIKit

class UsuariosViewController: UIViewController {
    
    @IBOutlet weak var nombreLabel: UILabel!
    
    @IBOutlet weak var correoLabel: UILabel!
    
    @IBOutlet weak var telefonoLabel: UILabel!
    @IBOutlet weak var viewLabels: UIView!
    
    
    
    var name : String?
    var email : String?
    var phone : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let red: CGFloat = 164/255
        let green: CGFloat = 197/255
        let blue: CGFloat = 244/255
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        viewLabels.backgroundColor = color
        
        nombreLabel.text = " El nombre es : \(name ?? "")"
        correoLabel.text = "Correo: \(email ?? "")"
        telefonoLabel.text = "📞 \(phone ?? "")"
        
       
    }
    
    
    @IBAction func regresarBTN(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
      
    }
    
}

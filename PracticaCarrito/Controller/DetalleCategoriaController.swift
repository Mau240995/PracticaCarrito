//
//  DetalleCategoriaController.swift
//  PracticaCarrito
//
//  Created by user217123 on 7/15/22.
//

import UIKit

class DetalleCategoriaController: UIViewController {
    var categoria : Categoria?
    
    @IBOutlet weak var imagCategoria: UIImageView!
    
    @IBOutlet weak var catidadProductos: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagCategoria.image = UIImage(named: (categoria?.imagen)!)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

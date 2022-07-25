//
//  DetalleProductoController.swift
//  PracticaCarrito
//
//  Created by user217123 on 7/15/22.
//

import UIKit

class DetalleProductoController: UIViewController {
    
    var producto: Producto?

    @IBOutlet weak var imagProducto: UIImageView!

    @IBOutlet weak var nomProducto: UILabel!
    
    @IBOutlet weak var categoria: UILabel!
    
    @IBOutlet weak var color: UILabel!
    
    @IBOutlet weak var precio: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       imagProducto.image = UIImage(named: (producto?.imagen)!)
        nomProducto.text =  producto?.nombre
        color.text = producto?.colores
        precio.text = producto?.precio
        categoria.text = producto?.categoria.nombre
        
        
        
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

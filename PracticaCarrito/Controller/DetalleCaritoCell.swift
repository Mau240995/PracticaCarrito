//
//  DetalleCariitoCell.swift
//  PracticaCarrito
//
//  Created by user217123 on 7/15/22.
//

import UIKit

class DetalleCaritoCell: UITableViewCell {

    @IBOutlet weak var lblPrecio: UILabel!
    @IBOutlet weak var lblProducto: UILabel!
    @IBOutlet weak var lblCategoria: UILabel!

    @IBOutlet weak var imagenProducto: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

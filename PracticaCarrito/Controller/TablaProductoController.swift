//
//  TablaProductoController.swift
//  PracticaCarrito
//
//  Created by user217123 on 7/15/22.
//

import UIKit

class TablaProductoController: UITableViewController {
    let arrayCategoria = [
        Categoria(nombre: "Categoria 1", imagen: "imagen1"),
        Categoria(nombre: "Categoria 2", imagen: "imagen2"),
        Categoria(nombre: "Categoria 3", imagen: "imagen3"),
        Categoria(nombre: "Categoria 4", imagen: "imagen4"),

        Categoria(nombre: "Categoria 5", imagen: "imagen5")
    ]
    var arregloProductos:[Producto] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
 arregloProductos = [
    Producto(imagen: "imagen1", nombre: "Producto 1", categoria: arrayCategoria[0], colores: "Azul", precio: "18000"),
    Producto(imagen: "imagen2", nombre: "Producto 2", categoria: arrayCategoria[1], colores: "Verde", precio: "20000"),
    Producto(imagen: "imagen3", nombre: "Producto 4", categoria: arrayCategoria[0], colores: "Azul", precio: "18000"),
    Producto(imagen: "imagen4", nombre: "Producto 3", categoria: arrayCategoria[1], colores: "Verde", precio: "20000"),
    Producto(imagen: "imagen5", nombre: "Producto 5", categoria: arrayCategoria[0], colores: "Azul", precio: "18000"),
    Producto(imagen: "imagen1", nombre: "Producto 6", categoria: arrayCategoria[1], colores: "Verde", precio: "20000"),
    Producto(imagen: "imagen2", nombre: "Producto 7", categoria: arrayCategoria[0], colores: "Azul", precio: "18000"),
    Producto(imagen: "imagen3", nombre: "Producto 8", categoria: arrayCategoria[1], colores: "Verde", precio: "20000"),
    Producto(imagen: "imagen4", nombre: "Producto 9", categoria: arrayCategoria[0], colores: "Azul", precio: "18000"),
    Producto(imagen: "imagen5", nombre: "Producto 10", categoria: arrayCategoria[1], colores: "Verde", precio: "20000") ]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arregloProductos.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaProducto", for: indexPath) as! DetalleProductoCell
        let producto = arregloProductos[indexPath.row]
        cell.lblProducto.text = producto.nombre!
        

        // Configure the cell...

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indexPath = self.tableView.indexPathForSelectedRow
           let producto = arregloProductos[indexPath!.row]
           let dc = segue.destination as! DetalleProductoController
           dc.producto = producto
    }

}

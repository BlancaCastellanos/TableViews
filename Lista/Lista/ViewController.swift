//
//  ViewController.swift
//  Lista
//
//  Created by Alumno on 9/28/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let nombres = ["Jorge", "Blanca", "Ivan", "Jimena"]
    let matriculas = ["170707", "18960", "186382", "192901"]
    let promedios = ["10.0", "9.8","8.6","9.8"]
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 82
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as!
        celdaAlumnoController
        
        celda.lblNombre.text = nombres[indexPath.row]
        celda.lblMatricula.text = matriculas[indexPath.row]
        celda.lblPromedio.text = promedios[indexPath.row]
        
        return celda
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doTapVolver(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}


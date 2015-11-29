//
//  VerResultadoDeMasa.swift
//  Pizzas
//
//  Created by Netzer Rivera on 24/11/15.
//  Copyright © 2015 Netzer Rivera. All rights reserved.
//

import UIKit

class VerResultadoDeMasa: UIViewController {

    @IBOutlet weak var lblTipoDeMasa: UILabel!
    @IBOutlet weak var lblTipoDeTamaño2: UILabel!
    
    @IBOutlet weak var lblqueso: UILabel!
    @IBOutlet weak var Swqueso: UISwitch!
    
    @IBOutlet weak var lblJamon: UILabel!
    @IBOutlet weak var SWjamon: UISwitch!
    
    @IBOutlet weak var lblPavo: UILabel!
    @IBOutlet weak var SWpavo: UISwitch!
    
    @IBOutlet weak var SWcebolla: UISwitch!
    @IBOutlet weak var lblCebolla: UILabel!
    
    
    @IBOutlet weak var SWsalchicha: UISwitch!
    @IBOutlet weak var lblSalchicha: UILabel!
    
    
    var ResultadoMasaTipo : String = " "
    var ResultadoTamaño2 : String = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        lblTipoDeMasa.text = ResultadoMasaTipo
        lblTipoDeTamaño2.text = ResultadoTamaño2
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func IngerdienteCebolla(sender: AnyObject) {
        
        if SWcebolla.on
        {
        lblCebolla.text = "Seleccionado"
        }else
        {
        
        lblCebolla.text = "No selecionado"
        }
        
    }
    
    @IBAction func IngerdienteSalchica(sender: AnyObject) {
        
        if SWsalchicha.on
        {
            lblSalchicha.text = "Seleccionado"
        }
        else
        {
        
            lblSalchicha.text = "No Seleccionado"
        
        }
        
    }
   
    
    
    
    @IBAction func IngedientePavo(sender: AnyObject) {
        
        if SWpavo.on
        {
            lblPavo.text = "Seleccionado"
        }
        else
        {
        
        lblPavo.text = "No Seleccionado"
        
        }
        
    }
   

    
    @IBAction func IngredienteJamon(sender: AnyObject) {
        
        if SWjamon.on
        {
          lblJamon.text = "Seleccionado"
        
        }else
        {
            lblJamon.text = "No Seleccionado"
        }
        
        
    }
    
    @IBAction func IngredienteQueso(sender: AnyObject) {
    
        if Swqueso.on
        {
            lblqueso.text = "Seleccionado"
            
        }else
        {
         lblqueso.text = "No Seleccionado "
        
        
        }
        
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

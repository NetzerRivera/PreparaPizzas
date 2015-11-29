//
//  VistaReslultadoTamaño.swift
//  Pizzas
//
//  Created by Netzer Rivera on 22/11/15.
//  Copyright © 2015 Netzer Rivera. All rights reserved.
//

import UIKit

class VistaReslultadoTaman_o: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var masa = []
    
    @IBOutlet weak var lblmasa: UILabel!
    @IBOutlet weak var resultadoTamanio: UILabel!
    
    var tamañoPizza : String = ""
    
    override func viewWillAppear(animated: Bool) {
        resultadoTamanio.text=tamañoPizza
        
    }
    
    //Siguiente vista MASA
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado=lblmasa.text
        let sigVista=segue.destinationViewController as! VerResultadoDeMasa
            
        sigVista.ResultadoMasaTipo=resultado!
        
        
        let resultado2=resultadoTamanio.text
        let sigVista2=segue.destinationViewController as! VerResultadoDeMasa
        sigVista2.ResultadoTamaño2=resultado2!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    masa = ["Delgada","Crujiente","Gruesa"]
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        
        return 1
    
    }
    //Jala el arreglo al picker
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return masa.count
    }
    
    //regresa el arreglo
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return "\(masa[row])"
    }
    
    // muestra en el label la seleccion del picker
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //lblText.text="Dato \(component)"
        if(component==0)
        {
            lblmasa.text = "\(masa[row])"
            
        }

  }  

}

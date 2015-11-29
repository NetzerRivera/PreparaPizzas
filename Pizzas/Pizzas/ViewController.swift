//
//  ViewController.swift
//  Pizzas
//
//  Created by Netzer Rivera on 22/11/15.
//  Copyright © 2015 Netzer Rivera. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    
    @IBOutlet weak var labelResultadoTamaño: UILabel!
    var tamaño = []
    
    //este método manda info de una vista a otra
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let reslutado=labelResultadoTamaño.text
        let sigVista=segue.destinationViewController as! VistaReslultadoTaman_o
        sigVista.tamañoPizza=reslutado!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       tamaño = ["Chica","Mediana","Grande"]
        
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
        
        return tamaño.count
    }
    
    //regresa el arreglo
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return "\(tamaño[row])"
    }
    
    // muestra en el label la seleccion del picker
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //lblText.text="Dato \(component)"
        if(component==0)
        {
            labelResultadoTamaño.text = "\(tamaño[row])"
        }


     }
}



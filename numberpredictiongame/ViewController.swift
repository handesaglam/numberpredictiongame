//
//  ViewController.swift
//  numberpredictiongame
//
//  Created by Hande Sağlam on 27.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tahminedileceksayı: UITextField!
    
    @IBOutlet weak var imgkaydet: UIImageView!
    
    @IBOutlet weak var butonkaydet: UIButton!
    
    @IBOutlet weak var tahmin: UITextField!
    
    @IBOutlet weak var tahminyukarı:
    UIImageView!
    
    @IBOutlet weak var tahminbutton: UIButton!
    @IBOutlet weak var denemehakkı: UILabel!
    @IBOutlet weak var yıldız1: UIImageView!
    
    @IBOutlet weak var yıldız2: UIImageView!
    
    @IBOutlet weak var yıldız3: UIImageView!
    
    @IBOutlet weak var yıldız4: UIImageView!
    
    @IBOutlet weak var yıldız5: UIImageView!
    
    var yıldızlar:[UIImageView]=[UIImageView]()
    let maxdenemesayıs:Int=5
    var denemesayısı:Int = 0
    var hedefsayı:Int = -1
    var oyunbasarılı:Bool=false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgkaydet.isHidden=true
        tahmin.isSecureTextEntry=true
        imgkaydet.image=UIImage(named: "onay")
       
        
        
        
        
        
    }

    
    @IBAction func btnkaydetclick(_ sender: UIButton) {
        
        if let t=Int(tahminedileceksayı.text!){
            hedefsayı=t
            print(hedefsayı)
            imgkaydet.image=UIImage(named: "hata")
            
            
        }
        
    }
    
    
    @IBAction func btndeneclick(_ sender: Any) {
        
        print("tıkladın")
        
        print(tahminedileceksayı.text)
        print(hedefsayı)
        if oyunbasarılı==true||denemesayısı>maxdenemesayıs{
            
            return
        }
        
        if let girilensayı=Int(tahmin.text!){
            denemesayısı = +1
      
            
            if girilensayı>hedefsayı{
                tahmin.backgroundColor=UIColor.red
                
                
            }else if girilensayı<hedefsayı
            {
                tahmin.backgroundColor=UIColor.red
           
            }else{
                
                tahmin.backgroundColor=UIColor.green
                print(tahminedileceksayı)
                print(hedefsayı)
            
            
           
                
            }
        }else{
            
            
        }
        
        
    }
    

}


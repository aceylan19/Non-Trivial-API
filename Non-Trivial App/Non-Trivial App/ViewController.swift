//
//  ViewController.swift
//  Non-Trivial App
//
//  Created by Aleyna  Ceylan on 10/23/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var headLabel: UILabel!
    @IBOutlet weak var curLabel1: UILabel!
    @IBOutlet weak var curLabel2: UILabel!
    @IBOutlet weak var curLabel3: UILabel!
    @IBOutlet weak var curLabel4: UILabel!
    @IBOutlet weak var currencyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickedOnCurrencyButton(_ sender: Any) {
        let urlLink = URL(string: "http://data.fixer.io/api/latest?access_key=b12ce91a6fd509f124c19f943d22dc8e")
        let session = URLSession.shared
        //Closure
        let task = session.dataTask(with: urlLink!) { data, response, error in
            if error != nil{
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
                
            }else{
                //2.
                if data != nil{
                    do{
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String, Any>
                        // ASYNC
                        DispatchQueue.main.async {
                            if let rates = jsonResponse["rates"] as? [String : Any]{
                                if let tr = rates["TRY"] as? Double{
                                    self.curLabel1.text = "TRY: \(tr)"
                                }
                                if let usd = rates["USD"] as? Double{
                                    self.curLabel2.text = "USD: \(usd)"
                                }
                                if let cad = rates["CAD"] as? Double{
                                    self.curLabel3.text = "CAD: \(cad)"
                                }
                                if let jpy = rates["JPY"] as? Double{
                                    self.curLabel4.text = "JPY: \(jpy)"
                                }
                            }
                        }
                    }
                    catch{
                        print("error")
                    }
                    
                }
            }
        }
        task.resume()
    
    }
    
}


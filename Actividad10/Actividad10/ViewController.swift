//
//  ViewController.swift
//  Actividad10
//
//  Created by Alumno IDS on 16/03/18.
//  Copyright © 2018 Jorge Guadarrama. All rights reserved.
//

import UIKit



class ViewController: UITableViewController {

    // These are my cells
    @IBOutlet weak var Cell1: UITableViewCell!
    @IBOutlet weak var Cell2: UITableViewCell!
    @IBOutlet weak var Cell3: UITableViewCell!
    @IBOutlet weak var Cell4: UITableViewCell!
    @IBOutlet weak var Cell5: UITableViewCell!
    @IBOutlet weak var Cell6: UITableViewCell!
    @IBOutlet weak var Cell7: UITableViewCell!
    @IBOutlet weak var Cell8: UITableViewCell!
    @IBOutlet weak var Cell9: UITableViewCell!
    @IBOutlet weak var Cell10: UITableViewCell!
    
    // These are the images related to each cell
    @IBOutlet weak var Image1:UIImageView!
    @IBOutlet weak var Image2:UIImageView!
    @IBOutlet weak var Image3:UIImageView!
    @IBOutlet weak var Image4:UIImageView!
    @IBOutlet weak var Image5:UIImageView!
    @IBOutlet weak var Image6:UIImageView!
    @IBOutlet weak var Image7:UIImageView!
    @IBOutlet weak var Image8:UIImageView!
    @IBOutlet weak var Image9:UIImageView!
    @IBOutlet weak var Image10:UIImageView!
    
    // These are the names related to each cell
    @IBOutlet weak var Name1: UILabel!
    @IBOutlet weak var Name2: UILabel!
    @IBOutlet weak var Name3: UILabel!
    @IBOutlet weak var Name4: UILabel!
    @IBOutlet weak var Name5: UILabel!
    @IBOutlet weak var Name6: UILabel!
    @IBOutlet weak var Name7: UILabel!
    @IBOutlet weak var Name8: UILabel!
    @IBOutlet weak var Name9: UILabel!
    @IBOutlet weak var Name10: UILabel!
    
    // These are the ratings related to each cell
    @IBOutlet weak var Rating1:UILabel!
    @IBOutlet weak var Rating2:UILabel!
    @IBOutlet weak var Rating3:UILabel!
    @IBOutlet weak var Rating4:UILabel!
    @IBOutlet weak var Rating5:UILabel!
    @IBOutlet weak var Rating6:UILabel!
    @IBOutlet weak var Rating7:UILabel!
    @IBOutlet weak var Rating8:UILabel!
    @IBOutlet weak var Rating9:UILabel!
    @IBOutlet weak var Rating10:UILabel!
    
    // These are the times related to each cell
    @IBOutlet weak var Time1:UILabel!
    @IBOutlet weak var Time2:UILabel!
    @IBOutlet weak var Time3:UILabel!
    @IBOutlet weak var Time4:UILabel!
    @IBOutlet weak var Time5:UILabel!
    @IBOutlet weak var Time6:UILabel!
    @IBOutlet weak var Time7:UILabel!
    @IBOutlet weak var Time8:UILabel!
    @IBOutlet weak var Time9:UILabel!
    @IBOutlet weak var Time10:UILabel!
    
    // These are the reviews related to each cell
    @IBOutlet weak var Review1:UITextView!
    @IBOutlet weak var Review2:UITextView!
    @IBOutlet weak var Review3:UITextView!
    @IBOutlet weak var Review4:UITextView!
    @IBOutlet weak var Review5:UITextView!
    @IBOutlet weak var Review6:UITextView!
    @IBOutlet weak var Review7:UITextView!
    @IBOutlet weak var Review8:UITextView!
    @IBOutlet weak var Review9:UITextView!
    @IBOutlet weak var Review10:UITextView!
    
    // This is our struct which defines the attributes of the cell. Each one has a name, an image, a review, a rating and a time
    struct Place{
        
        var Name: String?
        var Image: UIImage?
        var Review: String?
        var Rating: Double?
        var Time: String?
        
    }
    
    // Function that decodes my Places.json
    func DecodeJson(){
        let jsonFilePath:NSString = Bundle.main.path(forResource: "Places", ofType: "json")! as NSString
        let jsonData:NSData = NSData.dataWithContentsOfMappedFile(jsonFilePath as String) as! NSData
        let json = JSON(jsonData)
        Image1.image = #imageLiteral(resourceName: "tortas")
        Image4.image = #imageLiteral(resourceName: "tacos1")
        Image6.image = #imageLiteral(resourceName: "tacos2")
        Image8.image = #imageLiteral(resourceName: "biblioteca")
        Image10.image = #imageLiteral(resourceName: "tecmizap")
        Image2.image = #imageLiteral(resourceName: "licuados")
        Image3.image = #imageLiteral(resourceName: "oxxo")
        Image9.image = #imageLiteral(resourceName: "italiannis")
        Image7.image = #imageLiteral(resourceName: "selva magica")
        Image5.image = #imageLiteral(resourceName: "enchiladas")
        
        //Decoding
        Name1.text = json["name1"].string
        Rating1.text = json["rating1"].string
        Time1.text = json["time1"].string
        Review1.text = json["review1"].string
        
        Name2.text = json["name2"].string
        Rating2.text = json["rating2"].string
        Time2.text = json["time2"].string
        Review2.text = json["review2"].string
        
        Name3.text = json["name3"].string
        Rating3.text = json["rating3"].string
        Time3.text = json["time3"].string
        Review3.text = json["review3"].string
        
        Name4.text = json["name4"].string
        Rating4.text = json["rating4"].string
        Time4.text = json["time4"].string
        Review4.text = json["review4"].string
        
        Name5.text = json["name5"].string
        Rating5.text = json["rating5"].string
        Time5.text = json["time5"].string
        Review5.text = json["review5"].string
        
        Name6.text = json["name6"].string
        Rating6.text = json["rating6"].string
        Time6.text = json["time6"].string
        Review6.text = json["review6"].string
        
        Name7.text = json["name7"].string
        Rating7.text = json["rating7"].string
        Time7.text = json["time7"].string
        Review7.text = json["review7"].string
        
        Name8.text = json["name8"].string
        Rating8.text = json["rating8"].string
        Time8.text = json["time8"].string
        Review8.text = json["review8"].string
        
        Name9.text = json["name9"].string
        Rating9.text = json["rating9"].string
        Time9.text = json["time9"].string
        Review9.text = json["review9"].string
        
        Name10.text = json["name10"].string
        Rating10.text = json["rating10"].string
        Time10.text = json["time10"].string
        Review10.text = json["review10"].string
        
    }
    
    override func viewDidLoad() {
        DecodeJson()
        //print("Si entro xdxd")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
}


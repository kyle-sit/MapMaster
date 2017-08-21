//
//  PhotoMapViewController.swift
//  Photo Map
//
//  Created by Kyle Sit on 8/21/17.
//  Copyright (c) 2017 Kyle Sit. All rights reserved.
//

import UIKit
import MapKit

class PhotoMapViewController: UIViewController {

    //outlets
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var photoButton: UIButton!
    
    
    //viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        
        photoButton.frame = CGRect(x: 153, y: 540, width: 80, height: 80)
        photoButton.layer.cornerRadius = 0.5 * photoButton.bounds.size.width
        photoButton.clipsToBounds = true
    }

    
    //memory warning
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}

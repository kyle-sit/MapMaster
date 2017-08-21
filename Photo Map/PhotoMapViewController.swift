//
//  PhotoMapViewController.swift
//  Photo Map
//
//  Created by Kyle Sit on 8/21/17.
//  Copyright (c) 2017 Kyle Sit. All rights reserved.
//

import UIKit
import MapKit

class PhotoMapViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    //outlets
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var photoButton: UIButton!
    
    //instance variables
    var pickedImage: UIImage!
    let vc = UIImagePickerController()
    
    
    //viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        // set initial location in SF for map
        let initialLocation = CLLocation(latitude: 37.785771, longitude: -122.406165)
        centerMapOnLocation(location: initialLocation)
        
        //imagepicker settings
        vc.delegate = self
        vc.allowsEditing = true
        
        //setting button parameters
        photoButton.frame = CGRect(x: 153, y: 540, width: 80, height: 80)
        photoButton.layer.cornerRadius = 0.5 * photoButton.bounds.size.width
        photoButton.clipsToBounds = true
    }

    
    //memory warning
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //onclick for the photo button
    @IBAction func choosePhoto(_ sender: Any) {
        //prototype has no access to camera so defaults to camera roll
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            vc.sourceType = .camera
        } else {
            vc.sourceType = .photoLibrary
        }
        
        //segue in completion of dismissing view controller
        self.present(vc, animated: true, completion: {
            self.performSegue(withIdentifier: "tagSegue", sender: nil)
        })
    }
    
    
    //delegate method for accessing selected image
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : Any]) {
        // Get the image captured by the UIImagePickerController
        pickedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        //let editedImage = info[UIImagePickerControllerEditedImage] as! UIImage
        
        // Dismiss UIImagePickerController to go back to your original view controller
        dismiss(animated: true, completion: nil)
    }
    

    //helper method for centering map
    let regionRadius: CLLocationDistance = 3000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}

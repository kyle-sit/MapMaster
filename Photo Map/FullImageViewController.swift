//
//  FullImageViewController.swift
//  Photo Map
//
//  Created by Kyle Sit on 8/21/17.
//  Copyright (c) 2017 Kyle Sit. All rights reserved.
//

import UIKit

class FullImageViewController: UIViewController {

    //outlets
    @IBOutlet weak var fullImageView: UIImageView!
    
    //instace var
    var passedImage = UIImage()
    

    //ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        self.fullImageView.image = passedImage
    }

    
    //Memory Warning
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

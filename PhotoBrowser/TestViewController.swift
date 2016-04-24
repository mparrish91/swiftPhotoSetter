//
//  TestViewController.swift
//  PhotoBrowser
//
//  Created by parry on 4/23/16.
//  Copyright © 2016 Zhouqi Mo. All rights reserved.
//

import UIKit

class TestViewController: UIViewController, UIImagePickerControllerDelegate {

    var imagePicker: UIImagePickerController!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    

    @IBAction func onButtonPressed(sender: UIButton) {

        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)

        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action) in
            // ...
        }
        alertController.addAction(cancelAction)

        let OKAction = UIAlertAction(title: "Take a Photo", style: .Default) { (action) in
            // ...
            self.imagePicker =  UIImagePickerController()
//            imagePicker.delegate = self
            self.imagePicker.sourceType = .Camera

            self.presentViewController(self.imagePicker, animated: true, completion: nil)
        }
        alertController.addAction(OKAction)

        let destroyAction2 = UIAlertAction(title: "Choose from Library", style: .Default) { (action) in
            print(action)
        }
        alertController.addAction(destroyAction2)

        let destroyAction3 = UIAlertAction(title: "Choose from Facebook", style: .Default) { (action) in
            print(action)
        }
        alertController.addAction(destroyAction3)

        let destroyAction4 = UIAlertAction(title: "Choose from Instagram", style: .Default) { (action) in
            print(action)
            self.performSegueWithIdentifier("instagram", sender: nil)
        }
        alertController.addAction(destroyAction4)

        self.presentViewController(alertController, animated: true) {
            // ...
        }
    }

//    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
//        imagePicker.dismissViewControllerAnimated(true, completion: nil)
////        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

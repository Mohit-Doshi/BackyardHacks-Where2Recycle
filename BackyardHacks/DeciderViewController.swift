//
//  DeciderViewController.swift
//  BackyardHacks
//
//  Created by Mohit on 5/24/20.
//  Copyright © 2020 MoDo. All rights reserved.
//

import UIKit

class DeciderViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var Dispimg: UIImageView!
    
    @IBOutlet weak var LabelList: UILabel!
    var ccount = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
        ccount = 0
    }
    
    
    var imagePicker = UIImagePickerController();
    
    
    @IBAction func btnChooseImageOnClick(_ sender: UIButton) {
        
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            print("Button capture")

            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary
            imagePicker.allowsEditing = false

            present(imagePicker, animated: true, completion: nil)
        }
    }
    
        

    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: NSDictionary!){
        self.dismiss(animated: true, completion: { () -> Void in

        })

        Dispimg.image = image
    }
    
    
     // MARK: - ImagePicker Delegate

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        var selectedImage: UIImage?
        if let editedImage = info[.editedImage] as? UIImage {
            selectedImage = editedImage
            self.Dispimg.image = selectedImage!
            picker.dismiss(animated: true, completion: nil)
        } else if let originalImage = info[.originalImage] as? UIImage {
            selectedImage = originalImage
            self.Dispimg.image = selectedImage!
            picker.dismiss(animated: true, completion: nil)
        }

    }
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    

    
    
    @IBAction func CheckItem(_ sender: UIButton) {
        ccount += 1
        switch(ccount) {
            
        case 1:
            let seconds = 1.5
            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                // Put your code which should be executed with a delay here
                let alert = UIAlertController(title: "Recyclable?", message: "\nPlastic is Recyclable!\n", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                      switch action.style{
                      case .default:
                            print("default")

                      case .cancel:
                            print("cancel")

                      case .destructive:
                            print("destructive")


                }}))
                alert.addAction(UIAlertAction(title: "Add to List", style: .default, handler: { action in
                      switch action.style{
                      case .default:
                        self.LabelList.text = "Plastic"
                            
                      case .cancel:
                            print("cancel")

                      case .destructive:
                            print("destructive")


                }}))
                alert.view.tintColor = UIColor.white
                self.present(alert, animated: true, completion: nil)
                // change the background color
                let subview = (alert.view.subviews.first?.subviews.first?.subviews.first!)! as UIView
                subview.layer.cornerRadius = 1
                subview.backgroundColor = UIColor(red: 0.0, green: 0.6, blue: 0.2, alpha: 1.0)
                
            }
            break
            
        case 2:
            let seconds = 1.5
            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                // Put your code which should be executed with a delay here
                let alert = UIAlertController(title: "Recyclable?", message: "\nCookie is NOT Recyclable!\n", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                      switch action.style{
                      case .default:
                            print("default")

                      case .cancel:
                            print("cancel")

                      case .destructive:
                            print("destructive")


                }}))
                alert.view.tintColor = UIColor.white
                self.present(alert, animated: true, completion: nil)
                // change the background color
                let subview = (alert.view.subviews.first?.subviews.first?.subviews.first!)! as UIView
                subview.layer.cornerRadius = 1
                subview.backgroundColor = UIColor(red: 0.6, green: 0.0, blue: 0.2, alpha: 1.0)
                
            }
            break
        
        case 3:
            let seconds = 1.5
            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                // Put your code which should be executed with a delay here
                let alert = UIAlertController(title: "Recyclable?", message: "\nPaper is Recyclable!\n", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                      switch action.style{
                      case .default:
                            print("default")

                      case .cancel:
                            print("cancel")

                      case .destructive:
                            print("destructive")


                }}))
                alert.addAction(UIAlertAction(title: "Add to List", style: .default, handler: { action in
                      switch action.style{
                      case .default:
                        self.LabelList.text = self.LabelList.text! + ", Paper"
                            print("default")

                      case .cancel:
                            print("cancel")

                      case .destructive:
                            print("destructive")


                }}))
                alert.view.tintColor = UIColor.white
                self.present(alert, animated: true, completion: nil)
                // change the background color
                let subview = (alert.view.subviews.first?.subviews.first?.subviews.first!)! as UIView
                subview.layer.cornerRadius = 1
                subview.backgroundColor = UIColor(red: 0.0, green: 0.6, blue: 0.2, alpha: 1.0)
                
            }
            break
        
        case 4:
        let seconds = 1.5
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // Put your code which should be executed with a delay here
            let alert = UIAlertController(title: "Recyclable?", message: "\nBottle is Recyclable!\n", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                  switch action.style{
                  case .default:
                        print("default")

                  case .cancel:
                        print("cancel")

                  case .destructive:
                        print("destructive")


            }}))
            alert.addAction(UIAlertAction(title: "Add to List", style: .default, handler: { action in
                  switch action.style{
                  case .default:
                    self.LabelList.text = self.LabelList.text! + ", Bottle"
                        print("default")

                  case .cancel:
                        print("cancel")

                  case .destructive:
                        print("destructive")


            }}))
            alert.view.tintColor = UIColor.white
            self.present(alert, animated: true, completion: nil)
            // change the background color
            let subview = (alert.view.subviews.first?.subviews.first?.subviews.first!)! as UIView
            subview.layer.cornerRadius = 1
            subview.backgroundColor = UIColor(red: 0.0, green: 0.6, blue: 0.2, alpha: 1.0)
            
        }
        break
            
        default:
            print("Hi")
        }
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



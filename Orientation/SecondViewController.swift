//
//  ViewController.swift
//  Orientation
//
//  Created by Chintan Dave on 28/06/18.
//  Copyright © 2018 Code@Line. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{
  @IBOutlet weak var imageView:UIImageView!
  
  override func viewWillAppear(_ animated: Bool)
  {
    super.viewWillAppear(animated)
    
    orientation = (.landscape, .landscapeRight)
  }
  
  override func viewWillDisappear(_ animated: Bool)
  {
    super.viewWillDisappear(animated)
    
    UIView.animate(withDuration: 0.2) {
      self.imageView.alpha = 0
    }
    
    orientation = (.portrait, .portrait)
  }

  @IBAction func didDismissButtonPress(_ sender: UIButton)
  {
    orientation = (.portrait, .portrait)
    dismiss(animated: true) {}
  }
}

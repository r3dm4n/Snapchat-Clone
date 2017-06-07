//
//  ViewController.swift
//  Snapchat-Clone
//
//  Created by r3d on 07/06/2017.
//  Copyright © 2017 Alexandru Corut. All rights reserved.
//

import UIKit

class CameraVC: AAPLCameraViewController {

    @IBOutlet weak var previewView: AAPLPreviewView!
    
    override func viewDidLoad() {
    self._previewView = previewView
        super.viewDidLoad()

    
    }

 

}

    

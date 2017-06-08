//
//  ViewController.swift
//  Snapchat-Clone
//
//  Created by r3d on 07/06/2017.
//  Copyright © 2017 Alexandru Corut. All rights reserved.
//

import UIKit
import FirebaseAuth

class CameraVC: AAPLCameraViewController, AAPLCameraVCDelegate {

    @IBOutlet weak var recordBtn: UIButton!
    @IBOutlet weak var cameraBtn: UIButton!
    @IBOutlet weak var previewView: AAPLPreviewView!
    
    override func viewDidLoad() {
        delegate = self
        self._previewView = previewView
    super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        guard Auth.auth().currentUser != nil else {
            performSegue(withIdentifier: "LoginVC", sender: nil)
            return
        }
    }

    @IBAction func changeCameraActionPressed(_ sender: Any) {
        changeCamera()
    }
    
    @IBAction func recordBtnPressed(_ sender: Any) {
        toggleMovieRecording()
        
    }
    
    func shouldEnableCameraUI(_ enable: Bool) {
        cameraBtn.isEnabled = enable
        print("Should enable record UI:\(enable)")
    }
    
    func shouldEnableRecordUI(_ enable: Bool) {
        recordBtn.isEnabled = enable
        print("Should enable camera UI: \(enable)")
    }

    func recordingHasStarted() {
        print("Recording has started")
    }
    
    func canStartRecording() {
        print("Can start recording")
    }
    
    func videoRecordingComplete(_ videoURL: URL!) {
        print("Video recording complete")
    }
    
    func videoRecordingFailed() {
        print("Video recording failed")
    }
    
    func snapshotTaken(_ snapshotData: Data!) {
        print("Snapshot taken")
    }
    
    func snapshotFailed() {
        print("Snapshot failed")
    }
}

    

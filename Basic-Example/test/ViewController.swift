//
//  ViewController.swift
//  test
//
//  Created by Kris Penney on 2016-09-03.
//  Copyright © 2016 Kris Penney. All rights reserved.
//

import UIKit
import FCAlertView

class ViewController: UIViewController {

  let alertView: FCAlertView = {
    let alert = FCAlertView(type: .success)
    alert.dismissOnOutsideTouch = true
    
    return alert
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    alertView.delegate = self
  }

  @IBAction func showAlert(_ sender: UIButton) {
    
    alertView.showAlert(in: self, withTitle: "Testing", withSubtitle: "This is a test of the alert view. Touch the Close button to hide.", withCustomImage: nil, withDoneButtonTitle: "Done", andButtons: ["first", "second"])
  }
}

extension ViewController: FCAlertViewDelegate {
  func alertView(in alertView: FCAlertView, clickedButtonIndex index: Int, buttonTitle title: String) {
    print("\(title) : \(index)")
    
  }
  
  func FCAlertViewDismissed(in alertView: FCAlertView) {
    print("Delegate handling dismiss")
  }
  
  func FCAlertViewWillAppear(in alertView: FCAlertView) {
    print("Delegate handling appearance")
  }
}

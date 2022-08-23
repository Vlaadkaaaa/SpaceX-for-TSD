//
//  LaunchesViewController.swift
//  SpaceX
//
//  Created by Владислав Лымарь on 23.08.2022.
//

import UIKit

class LaunchesViewController: UIViewController {

    var str = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        print(str)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func dismisLaunchesButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

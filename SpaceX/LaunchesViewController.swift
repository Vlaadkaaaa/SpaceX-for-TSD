//
//  LaunchesViewController.swift
//  SpaceX
//
//  Created by Владислав Лымарь on 23.08.2022.
//

import UIKit

class LaunchesViewController: UIViewController {
    
    var nameRocket = ""
    var currentRocket = 0
    
    //First View Rocket
    @IBOutlet weak var nameRocketOneLabel: UILabel!
    @IBOutlet weak var dateRocketOneLabel: UILabel!
    @IBOutlet weak var luckyStartOneLable: UILabel!
    
    //SecondViewRocket
    @IBOutlet weak var twoViewOutlet: UIView!
    @IBOutlet weak var nameRocketTwoLabel: UILabel!
    @IBOutlet weak var dateRocketTwoLabel: UILabel!
    @IBOutlet weak var luckyStartTwoLabel: UILabel!
    
    @IBOutlet weak var nameRocketLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameRocketLabel.text = nameRocket
        showStartRocket(count: currentRocket)
    }
    
    func showStartRocket(count: Int){
        let value = arrayStartRocket[count]
        nameRocketOneLabel.text = value[0].nameRocketStart
        dateRocketOneLabel.text = value[0].dateStart
        if value[0].luckyStart {
            luckyStartOneLable.text = "✅"
        } else { luckyStartOneLable.text = "❌"
        }
        
        nameRocketTwoLabel.text = value[1].nameRocketStart
        dateRocketTwoLabel.text = value[1].dateStart
        if value[1].luckyStart {
            luckyStartTwoLabel.text = "✅"
        } else {           luckyStartTwoLabel.text = "❌"
        }
    }
    
    
    @IBAction func dismisLaunchesButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

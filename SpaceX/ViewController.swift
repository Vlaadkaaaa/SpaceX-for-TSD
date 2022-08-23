//
//  ViewController.swift
//  SpaceX
//
//  Created by Владислав Лымарь on 23.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var previousBtnOutlet: UIButton!
    var currentPozition = 0
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var rocketNameLabel: UILabel!
    
    
    //ScrollValueLabel
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var diameterValueLabel: UILabel!
    @IBOutlet weak var massValueLabel: UILabel!
    @IBOutlet weak var loadValueLabel: UILabel!
    
    
    //StartLabel
    @IBOutlet weak var firstStartLabel: UILabel!
    @IBOutlet weak var countryStartLabel: UILabel!
    @IBOutlet weak var priceStartLabel: UILabel!
    
    //Stage
    //FirstStage
    @IBOutlet weak var firstAmountEngine: UILabel!
    @IBOutlet weak var firstAmountFuel: UILabel!
    @IBOutlet weak var firstCombustionTime: UILabel!
    
    //SecondStage
    @IBOutlet weak var secondAmountEngine: UILabel!
    @IBOutlet weak var secondAmountFuel: UILabel!
    @IBOutlet weak var secondCombustionTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presentRocket(count: currentPozition)
        if currentPozition == 0 { previousBtnOutlet.isHidden = true
        }
        
    }
    
    func presentRocket(count: Int){
        let value = arrayRocket[count]
        imageView.image = UIImage(named: value.nameRocket)
        rocketNameLabel.text = value.nameRocket
        heightValueLabel.text = value.heightRocket
        diameterValueLabel.text = value.diametrRocket
        massValueLabel.text = value.massRocket
        loadValueLabel.text = value.loadRocket
        firstStartLabel.text = value.firstStart
        countryStartLabel.text = value.countryStart
        priceStartLabel.text = value.costStart
        
        firstAmountEngine.text = value.firstSteps.countEngine
        firstAmountFuel.text = value.firstSteps.countFuel
        firstCombustionTime.text = value.firstSteps.timeCombition
        
        secondAmountEngine.text = value.secondSteps.countEngine
        secondAmountFuel.text = value.secondSteps.countFuel
        secondCombustionTime.text = value.secondSteps.timeCombition
    }
    
    
    //Создание кнопки перехода между VC
    lazy var launchesVC = getLaunchesVC()
    private func getLaunchesVC() -> LaunchesViewController{
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "LaunchesViewController")
        return viewController as! LaunchesViewController
        
    }
    @IBAction func previousButton(_ sender: UIButton) {
        currentPozition -= 1
        guard currentPozition >= 0  else {return currentPozition = 0}
        presentRocket(count: currentPozition)
        pageControl.currentPage = currentPozition
        
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        currentPozition += 1
        previousBtnOutlet.isHidden = false
        guard currentPozition <= arrayRocket.count - 1  else {return currentPozition = arrayRocket.count - 1}
        presentRocket(count: currentPozition)
        pageControl.currentPage = currentPozition
    }
    @IBAction func presentLaunches(_ sender: UIButton) {
        self.present(launchesVC, animated: true)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destanation = segue.destination as! LaunchesViewController
        destanation.nameRocket = arrayRocket[currentPozition].nameRocket
        destanation.currentRocket = currentPozition
    }
    
}


//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by egy10 on 1/15/18.
//  Copyright © 2018 ahmed hossam. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    @IBOutlet weak var nextButton: BorderBoutton!
    var player: Player!
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
     
        // Do any additional setup after loading the view.
    }

    
    
    
    @IBAction func backToleaguekil(league: UIStoryboardSegue){
        
    }
    @IBAction func onMenTabbed(_ sender: Any) {
        selectLegue(legueType: "mens")
    }
    @IBAction func onWomenTabbed(_ sender: Any) {
        selectLegue(legueType: "womens")

    }
    @IBAction func onCoedTabbed(_ sender: Any) {
        selectLegue(legueType: "coed")

    }
    func selectLegue(legueType: String) {
        player.diserdLeague = legueType
        nextButton.isEnabled = true
        
    }
    @IBAction func onNextClicked(_ sender: Any) {
            performSegue(withIdentifier: "skillVCsegue", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  Pre-intermediateTableViewController.swift
//  Read_English_Story
//
//  Created by Alijon Jumayev on 5/9/24.
//

import UIKit

class Pre_intermediateTableViewController: UITableViewController {

    var identifier: String = "book"
    
    var arrayItems = ["Amazing Minibeasts", "Animals in the Air", "Festivals around the World", "Free Time Around the World", "How We Make Products", "Life in Rainforests", "Sound and Music", "Super Structures", "Wonderful Water", "Your Five Senses"]
    
    var urls = [
        "https://psv4.userapi.com/c415829/u1645672/docs/7a59171c688c/Amazing_Minibeasts_OR_amp_D_Level_3_pdf.pdf?extra=o8Ye4QXPaAKHf9i3Dk1GnrBtRG3XpAsD9KcVv7YHgwtnAqWgkimJjCLm5vUJjGjR6APy1avnEh6I34FDNuoQymsINixUh_UmJrlsmCOcsg5aL_k005hoCHcAjze_L_Tt4ipgpOVD", "https://psv4.userapi.com/c415829/u1645672/docs/22409db45c51/Animals_in_the_Air_OR_amp_D_Level_3_pdf.pdf?extra=zXtrbpQW8IjRZtZKTHe96aBXZAIRF986Txx3c9fJES_hO31ujdvCLYwnB1-GlsSxDsQolVwN4RCoVGPLDVuFD7TC8g87vP0q0hpu6ZWPHY8V9Lg-rjj6XzjsCbvhVrcDBTY8XiC7", "https://psv4.userapi.com/c415829/u1645672/docs/00d4fe95579c/Festivals_around_the_World_OR_amp_D_Level_3_pdf.pdf?extra=rNdwm80Md-vYca-HkyFObh29CNn_Gza8bvRwLxYr5hXs9li8dO9a0Frgee7-lMxcjj5bT4lU-XXTVL06T0XrT8Kl7LUNP_gg7mNVq2Xp5dPlBYfXOkT4aJ2F06BQ-HeBbFeeJZp3", "https://psv4.userapi.com/c415219/u1645672/docs/d609980b295f/Free_Time_Around_the_World_OR_amp_D_Level_3_pdf.pdf?extra=JIMmlZJI3pFsiljvewLEWgxehb9W1bz9G_gQW8gAYKoXs5G-UfNob-JaXl76SsOgk6IaH7ADd8yOpAuJk0ySH6jNn7AeqQ8eARfqKrwnId5ADH9nUsyX4X-Gwx0gW0L1z2UHFscx", "https://psv4.userapi.com/c415219/u1645672/docs/17d606944e4d/How_We_Make_Products_OR_amp_D_Level_3_pdf.pdf?extra=JPtKoLgaPtAl74YoogaCls-oc_WDrFjeUH-lrhYEyrnhtD1RpWnaXPtjJrFZihZ-ZfNbzaU1F-AaP9Is7pbzCAw-QePtAmj8M4cJCti6JZ7v6elHI5sSHI0EvF31vkYjw5OWkHHi", "https://psv4.userapi.com/c415219/u1645672/docs/8b369e88773f/Life_in_Rainforests_OR_amp_D_Level_3_pdf.pdf?extra=mPTuUPHZVeVETPiZ8endSHQm2A0NKp4W0RnWvsM9PFTkFpzd2wdIT8Nzbfy-3Ydlsy9VP74r5nKWJlQNerxbrq5oyW5B8XdCXBWjkPS1NG22Xbt9uKWEn8taK_gY8sfKQmhMH1hK", "https://psv4.userapi.com/c415219/u1645672/docs/bc16031e3bad/Sound_and_Music_OR_amp_D_Level_3_pdf.pdf?extra=WezDXU3eX5MneHFjge3THR4TPoHkAWGtwt0iPFfrWtAhX7YPSbt9Joim1pAZzC_8Je_uh10d1rofiunnoqa8nsFyChN4KVNxenN14nsY4zHvDf7vaTYcdgx7PCEznTWP-CW-MAak", "https://psv4.userapi.com/c415219/u1645672/docs/5e3afa3a52f8/Super_Structures_OR_amp_D_Level_3_pdf.pdf?extra=3fXa7iTM6Xz5aHHo8ViT80_yRbjvY3440owTG3aK14REGrwjbHAUWiywd4hmPA-pIHfyEJ5M34jhURVFzZ16J2bGqMTDjIqSkUzuswyZTq7stPRAEBz8gqAXLF4jloYdQ5Yv0vjP", "https://psv4.userapi.com/c415219/u1645672/docs/b6718b642e71/Wonderful_Water_OR_amp_Dr_Level_3_pdf.pdf?extra=y0_WOCccRcEr3dwbU3L56vVNN00t1siZwx0D92DZakWJeVnFPt3WVRtsdYcJjtZRzugoKDo1BfGXfckZr3AWacTrjDVHzJv1pE-EhsqOHGD5ak2dEB-KPQ2tIcMVzjF5TJ2GuHhM", "https://psv4.userapi.com/c415219/u1645672/docs/8f607b072e2d/Your_Five_Senses_OR_amp_D_Level_3_pdf.pdf?extra=nmTuMngxvoSCuqvrKNoxwZGTFfHhygjZ1iAACHvRQsusGJyS8d6FESTILLI5eX5vnTtVrVnotBFj17IVv9ve6oZLJ0U_AIp5QTz8yo8L60QwdpT9bwmnwJqBqVCoZEa8HNZX6HXV"
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Pre-intermediate"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "house.fill"), style: .plain, target: self, action: #selector(barButtonPressed))
        
        view.backgroundColor = UIColor(red: 0.08, green: 0.20, blue: 0.28, alpha: 1.0)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        
    }
    @objc func barButtonPressed() {
        let vc = ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        cell.textLabel?.text = arrayItems[indexPath.row]
        cell.backgroundColor = UIColor(red: 0.08, green: 0.20, blue: 0.28, alpha: 1.0)
        cell.textLabel?.textAlignment = .center
        cell.textLabel?.font = UIFont.systemFont(ofSize: 24)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let url   = urls[indexPath.row]
        let title = arrayItems[indexPath.row]
        
        let vc = PDFViewController()
        vc.selectUrl = url
        vc.navTitle  = title
        
        navigationController?.pushViewController(vc, animated: true)
    
    }

}

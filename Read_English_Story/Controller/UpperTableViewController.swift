//
//  UpperTableViewController.swift
//  Read_English_Story
//
//  Created by Alijon Jumayev on 5/9/24.
//

import UIKit

class UpperTableViewController: UITableViewController {
    
    var identifier: String = "book"
    
    var arrayItems = ["All About Islands", "Animal Life Cycles", "Exploring Our World", "Great Migrations", "Home Around World", "Materials to Products", "Medicine Then and Now", "Our World in Art", "Transportation", "Wild Weather"]

    var urls = [
        "https://psv4.userapi.com/c415530/u1645672/docs/c9a378a3e2a1/All_About_Iislands_L5_Oxford_Read_and_Discover.pdf?extra=DY_FFJxj8TgRP1Rm9KeZSXUhG3Dvjo9dS-NWyD50SYWcsuZjwnzjKnt8LONCBwtAvUB3wSSzum5LM98aIpfLp8uHBGbVeVlgE9_z9AP4lZTJAg4hZWl4py9FFFB_nhV6T6piFspP","https://psv4.userapi.com/c415530/u1645672/docs/245499a39c32/Animal_Life_Cycles_L5_Oxford_Read_and_Discover.pdf?extra=0P9a6n0agLgNvSwnYFceYW77fF9rCe53Mmor0j_IpjwAplhv0E0yI7BQe4HlB9IHKKxJvoEx5YZc0fQtaBJErQ1t5wF-wHlP6AN0FzYGrW78mIFd61rqkwUYi9_1HgPX_NqUIRuP", "https://psv4.userapi.com/c415530/u1645672/docs/e6888c733ce7/Exploring_Our_World_L5_Oxford_Read_and_Discover.pdf?extra=XiO762rZsBZJTYgP69JkY_CHYyyM83MKmLL2PUDr9x5DyQfgvzRg42VhJ_4DQEt9BblUvYc0JjlSWkXURI2VRtV0hbhaqwWqbyIzyq8gpcrKODxmmntgJ1qQEmS8oy3tbvKZAsW1", "https://psv4.userapi.com/c415530/u1645672/docs/915e2651c84f/Great_Migrations_L5_Oxford_Read_and_Discover.pdf?extra=vz6yVPGcZ9x9NVfp-lipTr5yD2vLzRRGzDD376--T71-gqgp2WJtG9GZFikdb6TGFh2R89aK5WM305_k_c0VNFzj0aDuuplBjZewxFDaSmplaDkf-WJCgX-AMRFdUpWFf6mp28O5", "https://psv4.userapi.com/c415530/u1645672/docs/5d7b4065141a/Home_Around_World_L5_Oxford_Read_and_Discover.pdf?extra=zkFjIdoxtWKpPQSEWaziFIBI1aWTTepPXE0LhbUXyKw2shySPGRIFH8fFd6YU0JO_WyOdb5sUR_AZ-I9zq2fozZePMSBxyd4ZMISYV9kXMTWQ2MNWtGKnDptRh2qmCaG8nBLdXHo", "https://psv4.userapi.com/c415530/u1645672/docs/c355f9d42007/Materials_to_Products_L5.pdf?extra=8NcmHRKk1WnOd0a1tfeUWo_BEeyQfY8kjg2oIwrEKueb1k03a60FqJzIUQrdNzy7UskNcrbgUwLlUwlC7c90cWzFTi8396pvv9ta54uR9aVcpju5YgLDidZRus3GeMFC2mZFeFEQ", "https://psv4.userapi.com/c415530/u1645672/docs/832b0ef8e388/Medicine_Then_and_Now_L5_Oxford_Read_and_Discov.pdf?extra=RWzjtLxPIQ-K9mo-2kojOZtSSAdCP-hCI1QPo9PSJaO9SfLzsfgxUbcGPkj2-gljHtbFdILU9tJUi7xRl5eyEOIwY3ZhdI3wIo8eEAYuDJcsnZxWuB_Pa_Ubt1t7W6NYN8j41zS4", "https://psv4.userapi.com/c415530/u1645672/docs/aaa8a96cc448/Our_World_in_Art_L5_Oxford_Read_and_Discover.pdf?extra=y9m6jtd9FyC6mVV90Dq4Fe6llbJ2mQv65dV29R-uh9O27NUUlcJd2Nfx0OpWfLqEUyGG7wqHLRghS2TLy5gwBntUu0DGaQ1EV7YYaQRyffHShLxIssV6LTJkLNptKs0Kl_IlPrV1", "https://psv4.userapi.com/c415530/u1645672/docs/0c5a55aae114/Transportation_L5_Oxford_Read_and_Discover.pdf?extra=QU6BmH2c8L8KLsm4vt7sxzxFe6ZUc1pabYxiLu9kekK62_krAYc1NZGnt12BhHzhQTceY3kHYkYwU1w-MWfwmJ40UeZVr1t0I0xIOSmqvFBIMnSroNXayBuycKi4ONq-_WiAI8hC", "https://psv4.userapi.com/c415530/u1645672/docs/557d5a12a6aa/Wild_Weather_L5_Oxford_Read_and_Discover.pdf?extra=dy7E900i7R0VlTfGVv2Q5DcaMIwV3pOC0G1WYRMbolao9o0sQbWWIaEYE4w9hECCeENwsBisChStMcC3VG7dfzsuv0RFsSlk1c3AVHSPySEyqVI3JtAxLbcJWusfF5YIkc8AhzFQ"
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Upper-Intermediate"
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

//
//  ElementaryTableViewController.swift
//  Read_English_Story
//
//  Created by Alijon Jumayev on 5/9/24.
//

import UIKit

class ElementaryTableViewController: UITableViewController {
    var identifier: String = "book"
    
    var arrayItems = ["Camouflage", "Cities", "Earth", "Electricity", "Farms", "In the Mountains", "Jobs", "Plastic", "Sunny and Rainy", "Your Body"]
    
    var urls = [
        "https://psv4.userapi.com/c615131/u1645672/docs/61b79f18691c/Camouflage_OR_amp_D_Level_2.pdf?extra=ZLVCEkd_tSViXmPB9CoyJ62fAWwmW_moyHxfhfLQXBzcCfRSMhNJzUmSbDn0lfel_qv6B-vUFnxX_wBbXsQ59qWFqRly3daoQYt2rhK6tH4Wn7jEFUC93skUPWBdPR6LSu5varkp", "https://psv4.userapi.com/c615131/u1645672/docs/759c19890cee/Cities_OR_amp_D_Level_2.pdf?extra=HTqKJSZcy0hoCmYwba8VNNK26HG1X-9hVWvytt_7IemKvBEIrNSH8Y31eOmbE7QiAKDpoX-CfFY4_J7BQ_RFx6stJLyKZ5BPCEiT5LepX0aU4rDxiXhC8pUDe_nHw2toNisYAgWi", "https://psv4.userapi.com/c615131/u1645672/docs/89ea4c527cbd/Earth_Oxford_Read_and_Discover_Level_2.pdf?extra=5e_Y9V_EJ510ZSaN5IHhnIY2rqmSYYSPAPpXtg4aBJMTW2QSBIvjzK3B2ZpEKkSMlIa8-FnHd-_Ty5yQq8xM7pFIKPvyx_lCpWOVCSx5eF-ZZxnj_XyVv5WZSGRXg4gRN29Zd8IQ", "https://psv4.userapi.com/c615131/u1645672/docs/d8de9aca61c6/Electricity_OR_amp_D_Level_2.pdf?extra=JY6AaZaWyKnt5eIN5CAqORoam-Tm1jDPzxgRSkAogKc8lKseSZ_yb_JGDz7SvTMo7E5QWyN3_LI_L1e7ByQn5rtlfoS5un-KqU28xmr7GziSG9Pi8rOjAbJFQJneH3mHzuL6y63J", "https://psv4.userapi.com/c615131/u1645672/docs/e7da3508f9a7/Farms_OR_amp_D_Level_2.pdf?extra=TZd2l_D5QTRdyf-0RfWwwDIpZ5Tv4czqTCovqiOsErunMyU6nfskLeP2VItf5SABnQIV_FFzt2ZpvFi8Y8Jj-digALb4Vs5hBGuYgeLGkT74n4HDmebwyHmYDUmDHF27wwhW_jPF", "https://psv4.userapi.com/c615131/u1645672/docs/0bdf43279414/In_the_Mountains_OR_amp_D_Level_2_pdf.pdf?extra=8RhgE_bazxvZfFBpiZriMWypBT467u64eN4nOOkEMlxpkoKVQrJhnGojZQlCZkactsennNUteK3GAjhpe3d27n_Wy9m-XgbiX9U3FXm0xH7KQhxv8OOZMC9aPWRabOxUcZdkCX9_", "https://psv4.userapi.com/c615131/u1645672/docs/034a8d5866ad/Jobs_OR_amp_D_Level_2.pdf?extra=1uAr0tHXWK5J9RhnDMW3-AdFjCNsZuXGIDkXD2sLcAgmIs3pdk_L9hDtKe4S4R2WHwuntVDY9hwW2lPavXa1Ma3H2lzMoaOd2bIdQRk3CkB8Gjq1XjjoBSALD1ID5_MiGVQohzeB", "https://psv4.userapi.com/c615131/u1645672/docs/14e6c77554bd/Plastic_OR_amp_D_Level_2.pdf?extra=HFdwmADUf1iUolcZZWK1Th13T5_Qo_jodkSdZoMNjmnIGgsnsbVOvfUHIRiHWfL6Ha7VDJ7ptebu54V8YgHi9Ft8YJXYacSVGlVfrwfK3zi38CxzXS50XyR_afZAczrU5m01kSdt", "https://psv4.userapi.com/c615131/u1645672/docs/133bf7a4c30a/Sunny_and_Rainy_OR_amp_D_Level_2.pdf?extra=X0AW0iEMXYApIXCElIv0XTsFeLq2G_IhsLtvvlzJBilNrGGX1XbgDTwf3bkYU00C97rBbBHvu3k1n2FZThs71mdlWMHvCCoN1DYPbaWgYiVZjZXHdEV7Ehjj2liGimM-6afAj3VP", "https://psv4.userapi.com/c615131/u1645672/docs/21bda32dbf22/Your_Body_OR_amp_D_Level_2.pdf?extra=3WAAiT5ioXxVovV7Ilnvu4oZnlF-k1Zy9wuJKnK6TrZCaXDuUv-q3rSqEPta_2Xs02OWSEKwGqcBsM2MT_0wiaNS9xZmiWs72GeN93ZOgE48t9amDZT5l8FqZ4w8YGaFBq6yJ7Tk"
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Elementary"
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

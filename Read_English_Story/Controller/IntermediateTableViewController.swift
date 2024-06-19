//
//  IntermediateTableViewController.swift
//  Read_English_Story
//
//  Created by Alijon Jumayev on 5/9/24.
//

import UIKit

class IntermediateTableViewController: UITableViewController {
    
    var identifier: String = "book"

    var arrayItems = ["All about Desert Life", "All about Ocean", "All about Plants", "Animals at Night", "Animals in Art", "How to Stay Healthy", "Incredible Earth", "Machines Then and Now", "Why We Recycle", "Wonders of the Past"]
    
    var urls = [
        "https://psv4.userapi.com/c615228/u1645672/docs/754e73399f76/All_about_Desert_Life_L4_Oxford_Read_and_Discov.pdf?extra=YxWGYrJb1Elx-FIMLJGKYpuYR3n3FyJmeSWSEUWOmUxLXeOVrPBSKCclAsqvYX8MXhksyk9NIGaJ0dxVUPPhq90PqOXqiCWgrNrFF0CiG4uzb1Ist3PSvgxFwPpgv6tOzinmK_YD", "https://psv4.userapi.com/c615228/u1645672/docs/4b7ac2443039/All_about_Ocean_Life_L4_Oxford_Read_and_Discove.pdf?extra=3NgpEsrFRLytmwDPgUcs1mfaW3lkTqZmVq6u_JR8zDZdZiv9H639tt1-8qnmJdbmKkmw6g3Tw_7PHNDq4ZUrH9spgyaOfrJEJTUHB9ZVzuafrZKHYJis3Ynb5hqy83mVfyqFQbxP", "https://psv4.userapi.com/c615228/u1645672/docs/184b9c5425d9/All_Aabout_Plants_L4_Oxford_Read_and_Discover.pdf?extra=BW69MrrTnN3svCR-1NhOE2AA4ktEtznvu8uCtw-_aBcOVkBxsRki5dPJ0Z-2JkgONFNhp0jZk8_qZJGxyb0e7U4qxhpCvaZDKUI6t85r5IBMCBthAVtoeYdqZWjDghGQqJDh7QOa", "https://psv4.userapi.com/c615228/u1645672/docs/9ece3cf9befd/Animals_at_Night_L4_Oxford_Read_and_Discover.pdf?extra=Rz14S2qMvBT6gqlMZ8unKtOle8hMnOwxIxWApAXyqF4TMW6NKLEeaq8bYlA0EhykOY4MR32-be2zMgS6q0xAJCHopXuiOI8ASBo8lK3Xy7hXzpm2jX3q46-2S5eYtKge9Gb5N1kv", "https://psv4.userapi.com/c615228/u1645672/docs/74cd19ae0fe8/Animals_in_Art_L4_Oxford_Read_and_Discover.pdf?extra=XSpOvxDVKdgMTG4m2ms_ki-iirxsGvNxEQ-1QHZb1l0p-FUPx_cxcZTM4uXva2Y-2syV53U0Rdb54z5Fpw0cA1ZRm86UP4emts1VWkwx90IyZ89pd74YxCjA1V046yub3aMM_7Cq", "https://psv4.userapi.com/c615228/u1645672/docs/21d2a4832f05/How_to_Stay_Healthy_L4_Oxford_Read_and_Discover.pdf?extra=pl8nZSyqXx0jdXv4aM8hQqW1fuIbqvunXca1MDU22cwZ4BsCZA1Ki_Vu2T2GTwBoMUNAi-K_vXw0CGt7C3e1_lkH-BcuoqTDUIsB2fJEv0f2CUP8QNO76tcbFTGUJtfRsL8PT3-p", "https://psv4.userapi.com/c615228/u1645672/docs/88f24e698af4/Incredible_Earth_L4_Oxford_Read_and_Discover.pdf?extra=PH3ka9gxcU8Ir9NeLTpzvSC1ymFNKeck6r_z0FjVdCpHdYJNp22jJdxpew-5K9ZD9ND537yR2K97GHLf2iuNcmruWHs7g8oA6wZFauXOtENRjDw5zD9-Q1aZyP3WtHpMDhGu24kp", "https://psv4.userapi.com/c615228/u1645672/docs/b2af5aa3417b/Machines_Then_and_Now_L4_Read_and_Oxford_Discov.pdf?extra=dv2aLHCLAvGlajTJj-A5VBCK9oAzKXlRJXN5kqTFwW_Eugyj7JtQNOI72fm0hcbUo1H5a5NAq_KNcoe6jTjCHwySlKcC7Z-fw5U2ouneCrtn0IKUtIoCzzWZ9UAho86MRXRIqPoz", "https://psv4.userapi.com/c615228/u1645672/docs/984e3cd5fd38/Why_We_Recycle_L4_Oxford_Read_and_Discover.pdf?extra=P1TQXfQOOE3L1wGE4Nw8dK2Kmis5_2sI9Jcr90c5uAz5RcaD_MqiMqAldYIbGINs68X58LtCCNbGbFPVXAGx-E9KI4brpDUj_7qJQWFhJ_4Asgq_RoSqgSb4d6MwHe36wEzoBM0X", "https://psv4.userapi.com/c615228/u1645672/docs/a343281a6289/Wonders_of_the_Past_L4_Oxford_Read_and_Discover.pdf?extra=PH-F-TC6UDIvPE4j7QssmM0PLCdvxu0Pwg16XWeX_9I5-5v_cCHS8kaAXiK3NoXZ-IXeRFwc83jxM_lJrsac0dv8rAPU_AmhO9lHowZ8RMFuCh2AMT9ukhB_XP5YfEplcjJpI53v"
    
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Intermediate"
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

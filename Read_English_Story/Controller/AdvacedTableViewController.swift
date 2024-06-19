//
//  AdvacedTableViewController.swift
//  Read_English_Story
//
//  Created by Alijon Jumayev on 5/9/24.
//

import UIKit

class AdvacedTableViewController: UITableViewController {
    
    var identifier: String = "book"
    
    var arrayItems = ["All about Space", "Caring For Our Planet", "Cells and Microbes", "Clothes Then and Now","Earth Then and Now", "Food around the World", "Helping Around the World", "Incredible Energy", "Wonderful Ecosystems", "Your Amazing Body"]
    
    var urls = [
        "https://psv4.userapi.com/c615429/u1645672/docs/89bc321e5b30/All_about_Space_L6_Oxford_Read_and_Discover.pdf?extra=4oWPj_8nFL2CcZeyTFi0UHA6JGMdXDHbtEMvAtcRO0G4tA6B81n7uyFCst9HrbkbcRbjXF1Nc0LloyUmpgFHvsjJQsKcJeZPzLx6ocH5B1ke28ArW4pFyaO3v1xfzd2b41NNO5ea", "https://psv4.userapi.com/c615429/u1645672/docs/130e7dce5877/Caring_For_Our_Planet_L6_Oxford_Read_and_Discov.pdf?extra=ZzOzUvZj0zww92pZOj94GX0UA_gamTie-jHphb9wkTj7xbQnH4_JnGRREInmXiCYwhvha8W644UY6grpIFvJWBriciFnTITmtKs0S8XMvoOirJO2kDkKD2HnjU4oPp-Vqbe9rO6U", "https://psv4.userapi.com/c615429/u1645672/docs/6b9e66668926/Cells_and_Microbes_L6_Oxford_Read_and_Discover.pdf?extra=j8VNNRHy9OLXKkb3wobhEg1kjMeAyYQgj-jT_VT05GDf_2G3g_HW4yMVVhfQtNDxpCJAKnqFDvQPngZ5yBqJJRaD08I__ztht6JTcH4MuiEoqkUvrUNBIyWjG-SNFmkalpPcjgmb", "https://psv4.userapi.com/c615429/u1645672/docs/c47c02215fc4/Clothes_Then_and_Now_L6_Oxford_Read_and_Discove.pdf?extra=1bCMmbkHHnly35I8N03NEBr1LExblX6wrDyd--ZXNmUc2MJWEFt32XshfVhP8f_bOATDUJhOaxga2ymJH1K-Iqvmib86VB7ruDpOk-DYZh6qTJjfaFqRHYGNFqtBMXW9GM0L3e4u", "https://psv4.userapi.com/c615429/u1645672/docs/9df14d79318c/Earth_Then_and_Now_L6_Oxford_Read_and_Discover.pdf?extra=qrkybFX0zK57VCiqAClWPzcy0NUmEYzvD3t_tyA01ePMO4O1fY__asXBDUcrzRVgbCJRHxputn_9wJOwNrB3yDWwH-wAwm-PaLiFyF7xx_lI4WF3wdoChuK6eIMB-0mLFM7_ISWy", "https://psv4.userapi.com/c615429/u1645672/docs/16ab19652574/Food_around_the_World_L6_Oxford_Read_and_Discov.pdf?extra=rwNq2prRDPyvfBzFiZLY5994t6fGoWAaZHctzlULfqWfGxQL5ALiSp7EfqPQ2BtdF5fB5kt783Ebnj42H0OaciYIlks61OgyFKmOqweX4gIWwHSmGa7tFzeu9a_HCXGQIUt94UHx", "https://psv4.userapi.com/c615429/u1645672/docs/b25227a63c2a/Helping_Around_the_World_L6_Oxford_Read_and_Dis.pdf?extra=R_3t_49F61xB-tqG4sHiko9D7j5aClLnSNDDRRRk54mGTh18m7IM6KLUr5ytN4LX0LtHRNNbDHx_Mye8b6evJ7R1btud9-ZxR-3_EwFVFWXcyBdTMH_HKZ7WUjH1wbC5C7sNPkx3", "https://psv4.userapi.com/c615429/u1645672/docs/97279172733a/Incredible_EnergyL6_Oxford_Read_and_Discover.pdf?extra=mD9JNEPE0gQprc5jFIDGlnSy-DUQG56oRCxeokL2f33LRUlk8NeHf2ZKVgf52GGbdm2uZUs-2jGRu-7_RC_cxyjhjpE26uo3LbdivvE0FSg5c4uyuDb_8KnqM0EL9D2MrjR7MJS0", "https://psv4.userapi.com/c615429/u1645672/docs/f71c0e864630/Wonderful_Ecosystems_L6_Oxford_Read_and_Discove.pdf?extra=xmYRTFjipshNMrLoF-GA77dYPzr2UzNzt4FGMUGk2N8onDmSgA81DQhKcYX9Bq6ICOTV5WLwuIVVgMgUf_Sp0g78U-bc6YKjgqLyJOgOE3clf2XOZRg0DiBqRbo6QkyFe7z28RCq", "https://psv4.userapi.com/c615429/u1645672/docs/7880adfbc90d/Your_Amazing_Body_L6_Oxford_Read_and_Discover.pdf?extra=kodCrt85DuX_Js50QqefBcHvubLKDi1kU1N2Vtu4U4ecSHu5A0LilugtGNV2P7p9wQo7XPh1FAyK7sqMcnJMZvbQdTY8cF8CCurENRhD-BwXrf43HYcBXemDgS38MVLIW2U4GNHe"
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Advaced"
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

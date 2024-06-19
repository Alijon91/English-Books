//
//  BeginnerTableViewController.swift
//  Read_English_Story
//
//  Created by Alijon Jumayev on 5/9/24.
//

import UIKit


class BeginnerTableViewController: UITableViewController {
    
    var identifier: String = "book"
    

    
    var arrayItems = ["Art", "At the Beach", "Eyes", "Fruit", "In the Sky", "Schools", "Trees", "Wheels", "Wild Cats", "Young Animals"]
    
    var urls = [ "https://psv4.userapi.com/c615618/u1645672/docs/ae05340d4155/Art_Oxford_Read_and_Discover_Level_1.pdf?extra=pAi96C6RGFNGzuSwqPgv1R8-euQURdsnZkSF7WG9wa90NJFbeagdqN9OSiLR_jkKlm74WXk6t1sZPoSMhd7RUFqzTrVyuQbqWp7n9d-9ETrxqA2O9d0rLWm9Jwgc0cie8LJogmziVHg", "https://psv4.userapi.com/c615618/u1645672/docs/cb1060f2d8ac/At_the_Beach_OR_amp_D_Level_1.pdf?extra=7wdLVzn1tDh758TapXVPZLMN2ea651QLSrrq95cVJn2ubTKMFjAgsFSJ9W68ahWOnnc8WZJD12hlOSNKyhK2KHeQkGs4_W6seVD0ZWIYwG-DtR60s2ZajpwTTUWP3BhAySMchPAdHg", "https://psv4.userapi.com/c615618/u1645672/docs/589d658173e0/Eyes_OR_amp_D_Level_1.pdf?extra=aFJ9jq9WZ7GdCu9qOs_vJ16PwN7uUUqrf6OQAvAvXrpELaULsFSQiqsX5tyG86FqQnPN1K3pi_x1DK2RRD0hLDTnTXf5vjZTWuMx9AmONblghVaUaT-MJRLmfZL0MVFlw0BQjSZ_1Q", "https://psv4.userapi.com/c615618/u1645672/docs/4af777865470/Fruit_OR_amp_D_Level_1.pdf?extra=xD3WzTqgiVZsi3cBU-6vdx6xKqTsu2YAiTkDuqzYO1_X056SCzg6FvXM5KdpwqtmPJS8-XPdrN7CchI53V5uwSUyLSLaooYnZ9TfcTEW_Ngf-_o8eURZMhOJiiwmOx7PSXv8v38fXg", "https://psv4.userapi.com/c615618/u1645672/docs/1f29138589cc/In_the_Sky_OR_amp_D_Level_1.pdf?extra=CwBgoTbAr0KrdAVNs4Rc2YZ4NyAmTwdpQaEM_QtKvVg4PocLAtTc56bA7qtP8fGOhAWTwEvVlV5mb_ZC-EuP_uRxVY4BKY9wbHsc2mmjA1gcf3hgCjWJEa6SPgDP059F0JRgvILoOQ", "https://psv4.userapi.com/c615618/u1645672/docs/f1dfc04d3ffa/Schools_OR_amp_D_Level_1.pdf?extra=QGBPrWNS8c4WsEH4K1eExkY_vZO6QrN3HIcBNwVXFbX76jtRCL40hsdsxM0gMMYMMC6s5GexMdJvz394f9NyFSklF-TUinRI20pBxh42jnEOuYWVsOpGAN1UohNKetAQaPHqwpSeQA", "https://psv4.userapi.com/c615618/u1645672/docs/3a848512bf2f/Trees_OR_amp_D_Level_1.pdf?extra=Db-V6wT2I11VXzb7KFWIlsPLTy2EXoe1mTp2RH4HcGW3Rq0XSwRdlyY1bzzgfPYml-nYhar0kFnh9gv1Iv6cJw1gJ_ZWBsqtMlKWX-y2BCuNDJQmMTL95-N4Tj27K8PjuHQSXjr4rw", "https://psv4.userapi.com/c615618/u1645672/docs/3af0474ebef1/Wheels_OR_amp_D_Level_1.pdf?extra=ptBjM4ctJSqmzSqG7By2cPNUR0y1w0Lrh1ObCK1zOi2d5bolHa_PJdJVVW8LiGoG6W40-H_S9ZWeqeqznkm2kMGYDS_1DNEcaIlq0GXCSUYmtOWk8nS0hwXnBuJlSNe2M9InhX85oA", "https://psv4.userapi.com/c615618/u1645672/docs/e5b9bb8da4bf/Wild_Cats_OR_amp_D_Level_1.pdf?extra=mkgnAm4UwLcSAhLgQSlzTMQe9ixKlzUme64ZsmDd9TtqpzoMXhFfFzIH5qXnbDvM8DCn355BWAcfxoqofJ4phvHWMxzlrItWpDHJvhMEmsyPpVHmuk3AZNYG8OmOb5FSX4bQnUUV_g", "https://psv4.userapi.com/c615618/u1645672/docs/cc346003e402/Young_Animals_OR_amp_D_Level_1.pdf?extra=dwVhmJiMfEr6pe6z07j1ufyerKsj0_dsnDxydgJ5TMkC2Cm287rBSo2XeYiusLa3IlIrNBXslWMrrCKY112wS1QOrB7ol_K1jMLaF1H14c1oSsVSaYtZ7zxjw-PKb10HumcjWwaVMA"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Beginner"
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


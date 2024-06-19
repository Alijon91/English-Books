//
//  PDFViewController.swift
//  Read_English_Story
//
//  Created by Alijon Jumayev on 5/10/24.
//

import UIKit
import WebKit

class PDFViewController: UIViewController {
    
    var selectUrl: String?
    var navTitle : String?
   
    
    private let webKit: WKWebView = {
        let webKitInstance = WKWebView()
        return webKitInstance
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = navTitle
        navigationController?.navigationBar.prefersLargeTitles = false
        
        DispatchQueue.global(qos: .background).async {
            if let bookUrl = self.selectUrl {
                if let url = URL(string: bookUrl) {
                    let request = URLRequest(url: url)
                    DispatchQueue.main.async {
                        self.webKit.load(request)
                        self.view.addSubview(self.webKit)
                        self.webKit.anchor(top: self.view.safeAreaLayoutGuide.topAnchor, bottom: self.view.safeAreaLayoutGuide.bottomAnchor, leading: self.view.leadingAnchor, trailing: self.view.trailingAnchor)
                    }
                } else {
                    DispatchQueue.main.async {
                        print("Invalid URL: \(bookUrl)")
                    }
                }
            } else {
                DispatchQueue.main.async {
                    print("Select URL is nil.")
                }
            }
            print("Task performed on a background thread")
        }

    }

}

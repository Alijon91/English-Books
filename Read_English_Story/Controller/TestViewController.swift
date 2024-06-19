//
//  TestViewController.swift
//  Read_English_Story
//
//  Created by Alijon Jumayev on 4/16/24.
//

import UIKit

class TestViewController: UIViewController {
    
    let defaults = UserDefaults.standard

    var quizBrain = QuizBrain()
    
    private let questionNumber: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textColor = .white
       
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 22, weight: .regular)
        label.backgroundColor = UIColor(red: 0.24, green: 0.36, blue: 0.44, alpha: 1.00)
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        return label
    }()
    private let score: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 22, weight: .regular)
        label.backgroundColor = UIColor(red: 0.24, green: 0.36, blue: 0.44, alpha: 1.00)
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        return label
    }()
    
    private let buttonC: UIButton = {
        let button = UIButton()
        button.setTitleColor(UIColor.white, for: .normal)
        button.setBackgroundImage(UIImage(named: "btn"), for: .normal)
        button.layer.cornerRadius = 17
        button.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        return button
    }()
    
    private let buttonB: UIButton = {
        let button = UIButton()
        button.setTitleColor(UIColor.white, for: .normal)
        button.setBackgroundImage(UIImage(named: "btn"), for: .normal)
        button.layer.cornerRadius = 17
        button.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        return button
    }()
    
    private let buttonA: UIButton = {
        let button = UIButton()
        button.setTitleColor(UIColor.white, for: .normal)
        button.setBackgroundImage(UIImage(named: "btn"), for: .normal)
        button.layer.cornerRadius = 17
        button.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        return button
    }()
    
    private let questionText: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textColor = .white
        label.numberOfLines = 4
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .regular)

        return label
    }()

    
    
    var trueAnswers = 0
    var questionNumbers = 0
    var level = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.08, green: 0.20, blue: 0.28, alpha: 1.0)
        
        
        title = "Test your level of English"
        navigationController?.navigationBar.prefersLargeTitles = false
        
        [questionNumber, score, buttonC, buttonB, buttonA, questionText].forEach {view.addSubview($0)}
        
        questionNumber.text = "\(trueAnswers)/30"
        score.text = "Score: \(questionNumbers)"
        
        setQustionNumbers()
        setScore()
        setButtonC()
        setButtonB()
        setButtonA()
        setQuestionText()
        updateQuestion()
        
        
       
        
        buttonA.addTarget(self, action: #selector(setButton(_:)), for: .touchUpInside)
        buttonB.addTarget(self, action: #selector(setButton(_:)), for: .touchUpInside)
        buttonC.addTarget(self, action: #selector(setButton(_:)), for: .touchUpInside)
        
        buttonA.tag = 1
        buttonB.tag = 2
        buttonC.tag = 3

    }
    
    //MARK: - WillAppear

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        if let level = defaults.string(forKey: "userLevel") {
            let alert = UIAlertController(title: "Last your result: \(level)", message: "You have previous test results. Do you want to continue or rerun the test?", preferredStyle: .alert)
            
            let actionHandler: (UIAlertAction) -> Void = { action in
                if action.title == "Continue" {
                    switch level {
                    case "Beginner":
                        let vc = BeginnerTableViewController()
                        self.navigationController?.pushViewController(vc, animated: true)
                    case "Elementary":
                        let vc = ElementaryTableViewController()
                        self.navigationController?.pushViewController(vc, animated: true)
                    case "Pre-intermediate":
                        let vc = Pre_intermediateTableViewController()
                        self.navigationController?.pushViewController(vc, animated: true)
                    case "Intermediate":
                        let vc = IntermediateTableViewController()
                        self.navigationController?.pushViewController(vc, animated: true)
                    case "Upper Intermediate":
                        let vc = UpperTableViewController()
                        self.navigationController?.pushViewController(vc, animated: true)
                    case "Advanced":
                        let vc = AdvacedTableViewController()
                        self.navigationController?.pushViewController(vc, animated: true)
                        
                    default:
                        
                        print("Unexpected user level: \(level)")
                    }
                } else {
                    
                }
            }
            
            let continueButton = UIAlertAction(title: "Continue", style: .default, handler: actionHandler)
            let restartButton = UIAlertAction(title: "Restart", style: .cancel, handler: actionHandler)
            
            alert.addAction(restartButton)
            alert.addAction(continueButton)
            
            present(alert, animated: true)
        } else {
            // Handle the case where there's no stored user level
            print("No user level found.")
        }

    }
    
    //MARK: - Button target
    
    @IBAction func setButton(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            let user = sender.currentTitle!
            let userGotItRight = quizBrain.checkAnswer(user)
            
            if userGotItRight {
                sender.backgroundColor = .green
                trueAnswers += 1
                score.text = "Score:\(trueAnswers)"
            } else {
                sender.backgroundColor = .red
            }
            
            questionNumbers += 1
            questionNumber.text = "\(questionNumbers)/30"
            
        case 2:
            let user = sender.currentTitle!
            let userGotItRight = quizBrain.checkAnswer(user)
            
            if userGotItRight {
                sender.backgroundColor = .green
                trueAnswers += 1
                score.text = "Score:\(trueAnswers)"
            } else {
                sender.backgroundColor = .red
            }
            questionNumbers += 1
            questionNumber.text = "\(questionNumbers)/30"
            
        case 3:
            let user = sender.currentTitle!
            let userGotItRight = quizBrain.checkAnswer(user)
            
            if userGotItRight {
                sender.backgroundColor = .green
                trueAnswers += 1
                score.text = "Score:\(trueAnswers)"
            } else {
                sender.backgroundColor = .red
            }
            questionNumbers += 1
            questionNumber.text = "\(questionNumbers)/30"
        default:
            break
        }
        
       
       
      
        if quizBrain.nextQuestion() == 30 {
            let alert = UIAlertController(title: setName(), message: "Your level: \(setLevel(trueAnswers))", preferredStyle: .alert)
            
            let restart = UIAlertAction(title: "Restart", style: .default) { action in
                let test = TestViewController()
                test.trueAnswers = 0
                test.questionNumbers = 0
                test.modalPresentationStyle = .fullScreen
                self.navigationController?.pushViewController(test, animated: true)
            }
            
            let next = UIAlertAction(title: "You want to read books", style: .default) { action in
                
                
                switch self.setLevel(self.trueAnswers) {
                case "Beginner":
                    self.defaults.set("Beginner", forKey: "userLevel")
                    let vc = BeginnerTableViewController()
                    self.navigationController?.pushViewController(vc, animated: true)
                case "Elementary":
                    self.defaults.set("Elementary", forKey: "userLevel")
                    let vc = ElementaryTableViewController()
                    self.navigationController?.pushViewController(vc, animated: true)
                case "Pre-intermediate":
                    self.defaults.set("Pre-intermediate", forKey: "userLevel")
                    let vc = Pre_intermediateTableViewController()
                    self.navigationController?.pushViewController(vc, animated: true)
                case "Intermediate":
                    self.defaults.set("Intermediate", forKey: "userLevel")
                    let vc = IntermediateTableViewController()
                    self.navigationController?.pushViewController(vc, animated: true)
                case "Upper Intermediate":
                    self.defaults.set("Upper Intermediate", forKey: "userLevel")
                    let vc = UpperTableViewController()
                    self.navigationController?.pushViewController(vc, animated: true)
                case "Advanced":
                    self.defaults.set("Advanced", forKey: "userLevel")
                    let vc = AdvacedTableViewController()
                    self.navigationController?.pushViewController(vc, animated: true)
                    
                default:
                   print(
                    "nothing")
                }
            }
            alert.addAction(restart)
            alert.addAction(next)
            
            present(alert, animated: true)
        }
       
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
        
    }

    @objc func updateQuestion() {
        questionText.text = quizBrain.getQuestionText()
        buttonA.setTitle(quizBrain.buttonA(), for: .normal)
        buttonB.setTitle(quizBrain.buttonB(), for: .normal)
        buttonC.setTitle(quizBrain.buttonC(), for: .normal)
        
        buttonA.backgroundColor = .clear
        buttonB.backgroundColor = .clear
        buttonC.backgroundColor = .clear
    }
    
    func setLevel(_ score: Int) -> String {
        
        var level = ""
        switch score {
        case 1...5:
            level = "Beginner"
        case 6...10:
            level = "Elementary"
        case 11...15:
            level = "Pre-intermediate"
        case 16...20:
            level = "Intermediate"
        case 21...25:
            level = "Upper Intermediate"
        case 26...30:
            level = "Advanced"
        default:
            level = "No Answers"
        }
        
        return level
        
        
    }
    
    func setName() -> String {
        
        var level = ""
        switch setLevel(trueAnswers) {
        case "Beginner":
            level = "Awsome"
        case "Elementary":
            level = "Outstanding"
        case "Pre-intermediate":
            level = "Admirable"
        case "Intermediate":
            level = "Incredible"
        case "Upper Intermediate":
            level = "Marvelous"
        case "Advanced":
            level = "Formidable"
        default:
            level = "No Answers"
        }
      return level
        
    }

    
    
    
    //MARK: - Question Numbers Constraint
    
    func setQustionNumbers() {
        questionNumber.anchor(top: view.safeAreaLayoutGuide.topAnchor, bottom: nil, leading: view.leadingAnchor, trailing: nil, padding: .init(top: 10, left: 10, bottom: 0, right: 0), size: .init(width: 70, height: 50))
    }
    
    //MARK: - Score Constraint
    
    func setScore() {
        score.anchor(top: questionNumber.topAnchor, bottom: nil, leading: nil, trailing: view.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 10), size: .init(width: 150, height: 50))
    }
    
    //MARK: - C Answer button Constraint
    
    func setButtonC() {
        buttonC.anchor(top: nil, bottom: view.safeAreaLayoutGuide.bottomAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 0, left: 10, bottom: 10, right: 10), size: .init(width: 0, height: 70))
    }
    
    //MARK: - B Answer button Constraint
    
    func setButtonB() {
        buttonB.anchor(top: nil, bottom: buttonC.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor,padding: .init(top: 0, left: 10, bottom: 15, right: 10), size:  .init(width: 0, height: 70))
    }

    //MARK: - A Answer button Constraint
    
    func setButtonA() {
        buttonA.anchor(top: nil, bottom: buttonB.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 0, left: 10, bottom: 15, right: 10), size: .init(width: 0, height: 70))
    }

    //MARK: - Question Text lable Constraint

    func setQuestionText() {
        questionText.anchor(top: nil, bottom: buttonA.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, padding:  .init(top: 0, left: 10, bottom: 150, right: 10), size: .init(width: 0, height: 100))
    }
    


    
    
    
    

 
}


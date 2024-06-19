//
//  QuestionBank.swift
//  Read_English_Story
//
//  Created by Alijon Jumayev on 5/6/24.
//

import Foundation
import UIKit

class QuizBrain {
        var list = [
        Question(text:"Have you got a pen? Yes, I _____ .", optionA: "a) am", optionB: "b) have" , optionC: "c) got", answer: "b) have"),
        Question(text: "It is a busy, _____ city.", optionA:"a) traffic", optionB: "b) quite", optionC: "c) noisy", answer: "c) noisy"),
        Question(text: "They _____ at home yesterday.", optionA: "a) was", optionB: "b) are", optionC: "c) were", answer: "c) were"),
        Question(text: "I _____ there for a long time.", optionA: "a) lived", optionB: "b) living", optionC: "c) live", answer: "a) lived"),
        Question(text: "He didn't _____ glasses.", optionA: "a) put", optionB: "b) wear", optionC: "c) take", answer: "b) wear"),
        Question(text: "_____ is very good exercise", optionA: "a) Swim", optionB: "b) To swim", optionC: "c) Swimming", answer: "c) Swimming"),
        Question(text: "Have you _____ been on a winter sports holiday?", optionA: "a) always", optionB: "b) ever", optionC: "c) soon", answer: "b) ever"),
        Question(text: "I can’t _____ another language.", optionA: "a) speaking", optionB: "b) speak", optionC: "c) to speak", answer: "b) speak"),
        Question(text: "They _____ pay for the tickets.", optionA: "a) haven’t to", optionB: "b) don’t have", optionC: "c) don’t have to", answer: "c) don’t have to"),
        Question(text: "_____ old is their car?", optionA: "a) What", optionB: "b) When", optionC: "c) How", answer: "c) How"),
        Question(text: "This is _____ than I thought.", optionA: "a) bad", optionB: "b) badder", optionC: "c) worse", answer: "c) worse"),
        Question(text: "Can you tell me the way _____ ?", optionA: "a) to the bank", optionB: "b) is the bank", optionC: "c) where is bank", answer: "a) to the bank"),
        Question(text: "Do you know what _____ ?", optionA: "a) time is it", optionB: "b) time is", optionC: "c) time it is", answer: "c) time it is"),
        Question(text: "Were you _____ to open the door?", optionA: "a) could", optionB: "b) can", optionC: "c) able", answer: "c) able"),
        Question(text: "Everybody _____ wear a seat belt in the car.", optionA: "a) must", optionB: "b) mustn’t", optionC: "c) don’t have to", answer: "a) must"),
        Question(text: "Your work is _____ better.", optionA: "a) being", optionB: "b) doing", optionC: "c) getting", answer: "c) getting"),
        Question(text: "She could play the piano _____ she could walk.", optionA: "a) during", optionB: "b) while", optionC: "c) before", answer: "c) before"),
        Question(text: "The train was cancelled, so we _____ .", optionA: "a) couldn’t go", optionB: "b) wasn’t go", optionC: "c) didn’t went", answer: "a) couldn’t go"),
        Question(text: "The problem was _____ solved.", optionA: "a) easy", optionB: "b) easy to", optionC: "c) easily", answer: "c) easily"),
        Question(text: "It was a difficult journey, but I _____ get home.", optionA: "a) could", optionB: "b) managed to", optionC: "c) at last", answer: "b) managed to"),
        Question(text: "How did you manage to cook _____ a good meal?", optionA: "a) so", optionB: "b) that", optionC: "c) such", answer: "c) such"),
        Question(text: "The solution had been found, _____ we hadn’t realised it.", optionA: "a) however", optionB: "b) therefore", optionC: "c) although", answer: "c) although"),
        Question(text: "She _____ I had been doing for all that time.", optionA: "a) asked to me", optionB: "b) asked for me", optionC: "c) asked me", answer: "c) asked me"),
        Question(text: "They _____ heard us coming, we were making a lot of noise.", optionA: "a) must have", optionB: "b) must", optionC: "c) might", answer: "a) must have"),
        Question(text: "He _____ to help me with the decorating.", optionA: "a) suggested", optionB: "b) offered", optionC: "c) invited", answer: "b) offered"),
        Question(text: "The dog was so frightened that it ran … the bed to hide.", optionA: "a) along", optionB: "b) beside", optionC: "c) under", answer: "c) under"),
        Question(text: "John was unable to … my party as he was ill.", optionA: "a) visit", optionB: "b) attend", optionC: "c) be present", answer: "b) attend"),
        Question(text: "Jane bought red shoes to … her red dress.", optionA: "a) match", optionB: "b) pair", optionC: "c) mate", answer: "a) match"),
        Question(text: "We’ll have to … the meeting until next month.", optionA: "a) put down", optionB: "b) put off", optionC: "c) put round", answer: "b) put off"),
        Question(text: "I am not sure … the black coat is.", optionA: "a) whom", optionB: "b) who", optionC: "c) whose", answer: "c) whose")
    ]
    
    var number = 0

    //MARK: - User selecte answer

    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == list[number].answer {
            return true
        } else {
            return false
        }
    }
    
    //MARK: - Question Text

    func getQuestionText() -> String {
        return list[number].text
    }
    
    //MARK: - Answers

    func buttonA() -> String {
        return list[number].optionA
    }
    
    func buttonB() -> String {
        return list[number].optionB
    }
    func buttonC() -> String {
        return list[number].optionC
    }
    
    //MARK: - Next Question

    func nextQuestion() -> Int {
        if number  == list.count - 1 {
            number = 0
            return list.count
        } else {
            number += 1
            return 0
        }
    }

}

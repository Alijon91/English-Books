//
//  Question.swift
//  Read_English_Story
//
//  Created by Alijon Jumayev on 5/6/24.
//

import Foundation

 struct Question {
     let text : String
     let optionA: String
     let optionB: String
     let optionC: String
     let answer: String
     
     init(text: String, optionA: String, optionB: String, optionC: String, answer: String) {
         self.text = text
         self.optionA = optionA
         self.optionB = optionB
         self.optionC = optionC
         self.answer = answer
     }
 }



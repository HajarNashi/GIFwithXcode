//
//  OnboardingItem.swift
//  GIF
//
//  Created by Hajar Nashi on 15/12/2022.
//

import Foundation
import UIKit
//struct OnboardingItem: Identifiable {
struct Page: Identifiable, Equatable {
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var samplePage = Page(name: "Title Example", description: "This is a sample description for the purpose of debugging", imageUrl: "pro", tag: 0)
    
    static var samplePages : [Page] = [
        Page(name: "Welcome to Default App!", description: "The best app to get stuff done in an app", imageUrl: "pro", tag: 0),
        Page(name: "Welcome to Default App!", description: "The best app to get stuff done in an app", imageUrl: "proo", tag: 1),
    ]
}

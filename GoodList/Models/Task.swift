//
//  Task.swift
//  GoodList


import Foundation

enum Priority: Int {
    case high = 0
    case medium = 1
    case low = 2
}

extension Priority {
    var displayTitle: String {
        get {
            switch self {
            case .high:
                return "High"
            case .medium:
                return "Medium"
            case .low:
                return "Low"
            }
        }
    }
    
}

struct Task {
    let title: String
    let priority: Priority
}

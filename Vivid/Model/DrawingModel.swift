//
//  DrawingModel.swift
//  Vivid
//
//  Created by Roa Moha on 20/07/1444 AH.
//
 import Foundation
import SwiftUI
import ARKit

struct Drawing {
    var lines: [Line]
}

struct Line {
    var start: SCNVector3
    var end: SCNVector3
}

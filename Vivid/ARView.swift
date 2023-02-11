////
////  ARView.swift
////  Vivid
////
////  Created by Roa Moha on 20/07/1444 AH.
////
//
//import Foundation
//import ARKit
//import CloudKit
//import SwiftUI
//import UIKit
//import SceneKit
//
//class ARSessionDelegate: NSObject, ARSessionDelegate {
//    // Implement the ARSessionDelegate protocol methods here
//}
//
//struct ARView: UIViewRepresentable {
//    @Binding var drawing: Drawing
//
//    func makeUIView(context: Context) -> ARSCNView {
//        let view = ARSCNView()
//        view.session.delegate = context.coordinator
//        return view
//    }
//    func updateUIView(_ view: ARSCNView, context: Context) {
//        guard let frame = view.session.currentFrame else { return }
//
//        // Draw the user's lines
//        for line in drawing.lines {
//            let start = line.start
//            let end = line.end
//
//            let startNode = SCNNode(geometry: SCNSphere(radius: 0.01))
//            startNode.position = SCNVector3(start.x, start.y, start.z)
//            view.scene.rootNode.addChildNode(startNode)
//
//            let endNode = SCNNode(geometry: SCNSphere(radius: 0.01))
//            endNode.position = SCNVector3(end.x, end.y, end.z)
//            view.scene.rootNode.addChildNode(endNode)
//
//            let lineNode = SCNNode(geometry: SCNGeometry.line(from: startNode.position, to: endNode.position))
//            lineNode.geometry?.firstMaterial?.diffuse.contents = UIColor.red
//            view.scene.rootNode.addChildNode(lineNode)
//        }
//    }
//}
//

//
//  DrawViewController.swift
//  Usuarios
//
//  Created by Lázaro Lima dos Santos on 30/01/18.
//  Copyright © 2018 Lázaro Lima dos Santos. All rights reserved.
//

import UIKit

class DrawViewController: UIViewController {

    @IBOutlet weak var canvasImageView: UIImageView!
    var lastPoint = CGPoint.zero
    var data = DrawingDataManager()
    
    private lazy var interactor = DrawInteractorFactory.make(presenter: DrawPresenterFactory.make(onSuccess: { drawing in
        self.canvasImageView.image = drawing.drawing
    }), dataManager: DrawingDataManagerFactory.make())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.getDrawing()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        if let drawing = canvasImageView.image {
            interactor.setDrawing(image: drawing)
        }
    }
    
    @IBAction func clearCanvasAction(_ sender: Any) {
        canvasImageView.image = nil
    }

}

extension DrawViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            lastPoint = touch.location(in: self.view)
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let currentPoint = touch.location(in: self.view)
            drawLines(fromPoint: lastPoint, toPoint: currentPoint)
            
            lastPoint = currentPoint
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        drawLines(fromPoint: lastPoint, toPoint: lastPoint)
    }
    
    func drawLines(fromPoint: CGPoint, toPoint: CGPoint) {
        UIGraphicsBeginImageContext(self.view.frame.size)
        canvasImageView.image?.draw(in: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        let context = UIGraphicsGetCurrentContext()
        context?.move(to: CGPoint(x: fromPoint.x, y: fromPoint.y))
        context?.addLine(to: CGPoint(x: toPoint.x, y: toPoint.y))
        context?.setBlendMode(CGBlendMode.normal)
        context?.setLineCap(CGLineCap.round)
        context?.setLineWidth(5)
        context?.setStrokeColor(UIColor.black.cgColor)
        context?.strokePath()
        canvasImageView.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }
    
}

extension DrawViewController: Identifiable { }

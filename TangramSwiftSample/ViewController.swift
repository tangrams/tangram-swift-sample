//
//  ViewController.swift
//  TangramSwiftSample
//
//  Created by Matt Blair on 11/24/19.
//  Copyright © 2019 Matt Blair. All rights reserved.
//

import UIKit
import TangramMap

class ViewController: UIViewController, TGMapViewDelegate, TGRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        let mapView = self.view as! TGMapView

        mapView.mapViewDelegate = self
        mapView.gestureDelegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let apiKey = Bundle.main.infoDictionary?["NextzenApiKey"] as! String

        let sceneUpdates = [TGSceneUpdate(path: "global.sdk_api_key", value: apiKey)]

        let mapView = self.view as! TGMapView

        let sceneUrl = URL(string: "https://www.nextzen.org/carto/bubble-wrap-style/9/bubble-wrap-style.zip")!

        mapView.loadSceneAsync(from: sceneUrl, with: sceneUpdates)
    }

    func mapView(_ mapView: TGMapView, didLoadScene sceneID: Int32, withError sceneError: Error?) {
        if let error = sceneError {
            print("Scene load error: \(error.localizedDescription)")
        }

        let newYork = CLLocationCoordinate2DMake(40.70532700869127, -74.00976419448854)
        mapView.cameraPosition = TGCameraPosition(center: newYork, zoom: 15, bearing: 0, pitch: 0)
    }

    func mapView(_ view: TGMapView!, recognizer: UIGestureRecognizer!, didRecognizeSingleTapGesture location: CGPoint) {
        let coordinate = view.coordinate(fromViewPosition: location)
        print("Tapped location: \(coordinate.longitude), \(coordinate.latitude)")
    }
}


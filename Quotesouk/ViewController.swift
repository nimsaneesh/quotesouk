import UIKit
import WebKit
import AVFoundation

class ViewController: UIViewController, WKUIDelegate {
    
    
    @IBOutlet weak var webV: WKWebView!
    

    override func viewDidLoad() {
            super.viewDidLoad()
            
            // Set WKWebView delegate
            webV.uiDelegate = self
            
            // Set scrollView delegate
//            webV.scrollView.delegate = self
            
            // Load the web content
            if let url = URL(string: "https://quotesouk.com/") {
                let request = URLRequest(url: url)
                webV.load(request)
            }
        }

        // MARK: UIScrollViewDelegate
        
//        func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
//            scrollView.pinchGestureRecognizer?.isEnabled = false
//        }
//
//        func scrollViewDidZoom(_ scrollView: UIScrollView) {
//            scrollView.minimumZoomScale = scrollView.zoomScale
//            scrollView.maximumZoomScale = scrollView.zoomScale
//        }
}

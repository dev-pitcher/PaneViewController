//
// Copyright (c) 2021 GreenJell0
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

import UIKit

class DemoPrimaryViewController: UIViewController {
    
    fileprivate let colors = [UIColor.green, UIColor.black, UIColor.orange, UIColor.purple]
    
    fileprivate var colorIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Primary View"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Show", style: .plain, target: self, action: #selector(showSecondaryView))
        
        view.backgroundColor = colors[colorIndex]
    }
    
    @objc func showSecondaryView() {
        showSecondaryViewAnimated(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        colorIndex += 1
        colorIndex %= colors.count
        view.backgroundColor = colors[colorIndex]
    }
    
}

//
//  AKSwiftyLoaderWindow.swift
//  AKSwiftyLoader
//
//  Created by Ashish Maheshwari on 28/03/18.
//  Copyright © 2018 Ashish Maheshwari. All rights reserved.
//

import UIKit

class AKSwiftyLoaderWindow: UIView {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var loaderView: UIView!
    
    private override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }

    internal required init?(coder aDecoder: NSCoder) {
        // For use in Interface Builder
        super.init(coder: aDecoder)
        setUpView()
    }
    
    private func setUpView() {
        
        let contentView = getContentView()
        addSubview(contentView)
    }
    
    internal func getContentView() -> UIView {
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: AKSwiftyLoaderWindow.self), bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
}


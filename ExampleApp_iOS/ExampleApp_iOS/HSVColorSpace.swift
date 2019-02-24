//
//  HSVColorSpace.swift
//  ExampleApp_iOS
//
//  Created by Lorenzo Bernaschina on 23/02/2019.
//  Copyright © 2019 Lorenzo Bernaschina. All rights reserved.
//

import ColorKit

public class HSVColorSpace: ColorSpace {
    
    private let name = "HSV"
    
    private var colorSpace: HSVSpace
    
    public override init(mediator: ColorSpaceMediator) {
        self.colorSpace = HSVSpace()
        super.init(mediator: mediator)
    }
    
    public func getName() -> String {
        return self.name
    }
    
    public func colorSpaceUpdate(space: HSVSpace) {
        self.colorSpace = space
        self.changed()
    }
    
    public func setColorSpaceFrom(space: RGBSpace) {
        self.colorSpace.fromRGBSpace(space: space)
    }
    
    public func getColorSpace() -> HSVSpace {
        return self.colorSpace
    }
}


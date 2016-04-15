//
//  DiagnosticCode.swift
//  Motion
//
//  Created by Ashish Agarwal on 2016-02-11.
//  Copyright © 2016 Mojio. All rights reserved.
//

import UIKit
import ObjectMapper
import RealmSwift

public class DiagnosticCode: Object, Mappable {
    
    public dynamic var Code : NSString? = nil
    public dynamic var Description : NSString? = nil
    public dynamic var Timestamp : NSString? = nil
    public dynamic var Severity : NSString? = nil // ['Unknown', 'Low', 'Medium', 'High', 'None'],
    public dynamic var Instructions : NSString? = nil
    
    public required convenience init?(_ map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        Code <- map["Code"];
        Description <- map["Description"];
        Timestamp <- map["Timestamp"];
        Severity <- map["Severity"];
        Instructions <- map["Instructions"];
    }

}
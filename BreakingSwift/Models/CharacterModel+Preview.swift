//
//  CharacterModel+Preview.swift
//  BreakingBad
//
//  Created by Alex Varghese on 12/30/20.
//

import Foundation

extension CharacterModel {
    
    public static var preview: CharacterModel {
        let jsonString = "{\"char_id\":1,\"name\":\"Walter White\",\"birthday\":\"09-07-1958\",\"occupation\":[\"High School Chemistry Teacher\",\"Meth King Pin\"],\"img\":\"https://images.amcnetworks.com/amc.com/wp-content/uploads/2015/04/cast_bb_700x1000_walter-white-lg.jpg\",\"status\":\"Presumed dead\",\"nickname\":\"Heisenberg\",\"appearance\":[1,2,3,4,5],\"portrayed\":\"Bryan Cranston\",\"category\":\"Breaking Bad\",\"better_call_saul_appearance\":[]}"
        
        guard let jsonData = jsonString.data(using: .utf8) else {
            fatalError()
        }
        
        guard let result = try? JSONDecoder().decode(CharacterModel.self, from: jsonData) else {
            fatalError()
        }
        
        return result
    }
    
}

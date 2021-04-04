//
//  StarterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 01.04.2021.
//

import SwiftUI

struct StarterView: View {
    @AppStorage("isRegister") var isRegister = false
    
    var body: some View {
        Group {
            if isRegister {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}

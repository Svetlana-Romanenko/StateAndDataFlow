//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 31.03.2021.
//

import SwiftUI

struct RegisterView: View {
    @AppStorage("isRegister") private var isRegister = false
    @AppStorage("name") private var name: String = ""
    @State private var enteredName = ""
    
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $enteredName)
                    .multilineTextAlignment(.center)
                Text("\(enteredName.count)")
                    .foregroundColor(enteredName.count > 2 ? Color(.green) : Color(.red))
            }
            .padding()
            Button(action: registerUser) {
                Image(systemName: "checkmark.circle")
                Text("Ok")
            }.disabled(enteredName.count > 2 ? false : true)
        }
    }
    
    private func registerUser() {
        if enteredName.count > 2 {
            name = enteredName
            isRegister = true
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

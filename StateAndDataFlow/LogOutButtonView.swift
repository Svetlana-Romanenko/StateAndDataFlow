//
//  LogOutButtonView.swift
//  StateAndDataFlow
//
//  Created by Светлана Романенко on 04.04.2021.
//

import SwiftUI

struct LogOutButton: View {
    @AppStorage("name") private var name = ""
    @AppStorage("isRegister") private var isRegister = true
    
    var body: some View {
        Button(action: { cleanUsername() }) {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
    
    private func cleanUsername() {
        isRegister = false
        name = ""
    }
}

struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButton()
    }
}

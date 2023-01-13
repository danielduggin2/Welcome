//
//  TestLogin.swift
//  Welcome
//
//  Created by Daniel Wade Duggin on 1/13/23.
//

import SwiftUI
import Combine
import AuthenticationServices

struct TestLogin: View {
    var body: some View {
        ZStack{
            Color.black.opacity(0.5).edgesIgnoringSafeArea(.all)
            
            LoginBoard()
        }
    }
}

struct TestLogin_Previews: PreviewProvider {
    static var previews: some View {
        TestLogin()
    }
}


struct LoginBoard: View {
    @State private var showingDetail = false
    var body: some View {
        
         ZStack (alignment: .topLeading){
             VStack(alignment: .leading, spacing: 16){
                 Button(action: {
                             self.showingDetail.toggle()
                         }) {
                             Text("ENTER")
                                 .font(.custom("Times New Roman", size: 50))
                                 
                         }.sheet(isPresented: $showingDetail) {
                             LoginScreen()
                         }
             }
             .padding()
             .frame(width: 250, height: 100)
             .foregroundColor(Color.white.opacity(100))
         }
         
        
    }
}

/*
 SignInWithAppleButton{ (request) in
     
     
 } onCompletion: { (result) in
     switch result{
     case.success(let user):
         print("success")
         //failure below
     case.failure(let error):
         print(error.localizedDescription)
     }
 }
 .frame(height: 55)
 .clipShape(Capsule())
 .padding(.horizontal, 90)
 
 
 */


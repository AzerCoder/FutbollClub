//
//  LoginView.swift
//  FutbollClub
//
//  Created by A'zamjon Abdumuxtorov on 31/07/24.
//

import SwiftUI

struct LoginView: View {
    @State var phone:String = ""
    @State var password:String = ""
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("FONS")
                    .opacity(0.9)
                VStack(spacing:30){
                    Image("logo")
                        .resizable()
                        .frame(width: 90,height: 80)
                    Text("Welcome to QIZILQUM".uppercased())
                        .font(.title).bold()
                        .foregroundStyle(.orange)
                    TextField("Phone", text: $phone)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .frame(height: 45)
                        .background(.white)
                        .cornerRadius(20)
                        .padding(.horizontal)
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .frame(height: 45)
                        .background(.white)
                        .cornerRadius(20)
                        .padding(.horizontal)
                    
                    NavigationLink {
                        CustomTabView()
                    } label: {
                        Text("Login")
                            .foregroundStyle(.white)
                            .frame(width: 250,height: 45)
                            .background(.blue)
                            .cornerRadius(15)
                    }.padding(.top,20)

                  
                }.padding()
            }
        }
    }
}

#Preview {
    LoginView()
}

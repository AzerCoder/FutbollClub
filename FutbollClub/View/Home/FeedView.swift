//
//  FeedView.swift
//  FutbollClub
//
//  Created by A'zamjon Abdumuxtorov on 31/07/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color.darkblue.ignoresSafeArea()
                VStack{
                    HStack(spacing:2){
                        Button {
                            
                        } label: {
                            Image("ticketimg")
                        }
                        Button {
                            
                        } label: {
                            Image("shopimg")
                        }

                    }
                    ScrollView{
                        VStack(spacing:0) {
                            ZStack(alignment:.bottom){
                                Image("teamimg")
                                VStack {
                                    Text("Murabbiy yosh shogirtlarga masterklass o’tmoqda")
                                        .font(.title).bold()
                                    .multilineTextAlignment(.center)
                                    HStack{
                                        Text("First Team".uppercased())
                                            .bold().font(.subheadline)
                                    }
                                }.padding(.bottom)
                            }
                            
                            ZStack{
                                Image("bollImg")
                            }
                        }
                        
                       
                    }
                }
               
            }
            .navigationBarItems(
                leading: HStack{
                    Image("logo")
                    Text("PFC QIZILQUM")
                        .font(.title2)
                        .fontDesign(.rounded)
                        .fontWeight(.heavy)
                        .bold()
                    
                },
                trailing: Button(action: {
                    
                }, label: {
                    HStack{
                        Text("Log in")
                            .font(.headline)
                        Image(systemName: "person.fill")
                            .foregroundColor(.white)
                    }
                })
        )
            .foregroundColor(.white)
            
        }
    }
}
#Preview {
    FeedView()
}

//
//  ChatView.swift
//  FutbollClub
//
//  Created by A'zamjon Abdumuxtorov on 31/07/24.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.darkblue.ignoresSafeArea()
                VStack(spacing:0){
                    ZStack{
                        LinearGradient(colors: [.pink.opacity(0.8),.darkblue.opacity(0.8),], startPoint: .top, endPoint: .bottom)
                        
                        VStack{
                            HStack{
                                Text("Qurter-Finals")
                                Text("Bunyotkor Stadion")
                            }
                            .font(.caption)
                            Text("PAYSHANBA 24 YANVAR")
                                .bold().font(.title2)
                            
                            HStack(spacing:30){
                                VStack{
                                    Image("navlogo")
                                    Text("Navbahor")
                                }
                                
                                VStack{
                                    Text("PF Liga")
                                    HStack{
                                        Image(systemName: "clock")
                                        Text("20:00")
                                    }.foregroundColor(.red)
                                }
                                
                                VStack{
                                    Image("logo")
                                        .resizable()
                                        .frame(width: 70,height: 60)
                                    Text("Qizilqum")
                                }
                            }
                            
                        }
                    }.frame(height: 180)
                    
                    ScrollView{
                        VStack {
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
                            Text("Upcoming Schedule")
                                .font(.title3).bold()
                                .padding(.horizontal,30)
                                .frame(maxWidth: .infinity,alignment: .leading)
                            Divider()
                            ListCell()
                                .frame(height: 60)
                            Divider()
                            ListCell()
                                .frame(height: 60)
                            Button {
                                
                            } label: {
                                Image("button")
                            }

                            Text("Latest Results")
                                .font(.title3).bold()
                                .padding(.horizontal,30)
                                .frame(maxWidth: .infinity,alignment: .leading)
                            Divider()
                            ListCell()
                                .frame(height: 60)
                            Divider()
                            ListCell()
                                .frame(height: 60)
                            Button {
                                
                            } label: {
                                Image("button")
                            }

                        }
                    }
                    .frame(width: UIScreen.main.bounds.width)
                    .foregroundColor(.black)
                    .background(.white)
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
    ChatView()
}

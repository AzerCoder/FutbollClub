//
//  HomeView.swift
//  FutbollClub
//
//  Created by A'zamjon Abdumuxtorov on 31/07/24.
//

import SwiftUI

struct CustomTabView: View {
    @State private var tabSelection = "house.fill"
    
    let tabs = ["house.fill","calendar","tv.fill","bolt.fill","gearshape.fill"]
    
    var body: some View {
        ZStack(alignment:.bottom) {
            TabView(selection: $tabSelection) {
                FeedView()
                    .tag("house.fill")
                ChatView()
                    .tag("calendar")
                WatchView()
                    .tag("tv.fill")
                ProfileView()
                    .tag("bolt.fill")
                SettingView()
                    .tag("gearshape.fill")
            }
            .onAppear {
                UITabBar.appearance().isHidden = true
            }
            
            customTabBar
        }
    }
    
    private var customTabBar: some View {
        HStack {
            ForEach(tabs, id: \.self) { tab in
                TabBarItem(tab: tab, selected: $tabSelection)
            }
        }
        .frame(width: UIScreen.main.bounds.width - 40, height: 50)
        .padding(.vertical, 10)
        .background(Color.darkblue)
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.3), radius: 10)
        .offset(y:15)
    }
}

struct TabBarItem: View {
    let tab: String
    @Binding var selected: String
    
    var body: some View {
        Button {
            selected = tab
        } label: {
            Image(systemName: tab)
                .resizable()
                .frame(width: 25,height: 25)
                .foregroundColor(.white)
        }
        .opacity(selected == tab ? 1 : 0.6)
        .padding(.vertical, 10)
        .padding(.horizontal, 15)
        .background(.clear)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.white, lineWidth: selected == tab ? 1 : 0)
        )
        .padding(.horizontal,4)
    }
}

#Preview {
    CustomTabView()
}

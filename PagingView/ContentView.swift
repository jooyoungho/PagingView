//
//  ContentView.swift
//  PagingView
//
//  Created by JooYoungho on 2021/03/14.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            
            GeometryReader { proxy in
                TabView {
                    
                    VStack {
                        Text("안녕하세요")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .padding(2)
                    }
                    .rotationEffect(.degrees(-90))
                    .frame(
                        width: proxy.size.width,
                        height: proxy.size.height
                    )
                    VStack {
                        
                        Text("반가워")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        
                    }
                    .rotationEffect(.degrees(-90))
                    .frame(
                        width: proxy.size.width,
                        height: proxy.size.height
                    )
                    
                }
                .frame(
                    width: proxy.size.height,
                    height: proxy.size.width
                )
                .rotationEffect(.degrees(90), anchor: .topLeading)
                .offset(x: proxy.size.width)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            }
            .tabItem {
                Image(systemName: "house")
            }
            
            
            Text("Test")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    
                }
            Text("Test")
                .tabItem {
                    Image(systemName: "bell")
                    
                }
            Text("Test")
                .tabItem {
                    Image(systemName: "person")
                }
                    
                    
        }
        .accentColor(.pink)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

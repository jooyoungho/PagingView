//
//  ContentView.swift
//  PagingView
//
//  Created by JooYoungho on 2021/03/14.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [
        .red, .green, .blue, .gray
    ]
    @State private var isHint = false
    
    var body: some View {
        TabView {
            
            GeometryReader { proxy in
                TabView {
                    
                    VStack {
                        
                        Text("안녕하세요")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .padding(2)
                        
                        if(isHint) {
                            Text("Hello")
                                .font(.body)
                        }
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
                        
                        if(isHint) {
                            Text("Nice to meet you")
                                .font(.body)
                        }
                    }
                    .onAppear {
                        self.isHint = false
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
                Image(systemName: "1.square.fill")
                Text("First")
            }
            .onTapGesture(count: 2, perform: {
                withAnimation {
                    self.isHint.toggle()
                }
            })
            
            Text("Test")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("First")
                }
                    
                    
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

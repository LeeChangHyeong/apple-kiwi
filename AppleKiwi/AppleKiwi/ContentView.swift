    //
//  ContentView.swift
//  AppleKiwi
//
//  Created by MBSoo on 2022/04/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            HStack {
                Text("마이페이지")
                    .padding().font(.title)
                Spacer()
            }.background(.white)
            
            HStack{ Image("test")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                            .clipShape(Circle()).padding()
                
                Text("changBro chaleea22@pos.idserve.net")
                    .font(.body)
                    .frame(minWidth: 0, idealWidth: 100, maxWidth: 400, minHeight: 0, maxHeight: 100, alignment: .center)

                
                Spacer()
            }
            
            List {
                Button("알림설정") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                Button("비밀번호 변경") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                Button("기본 방침") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                Button("회원 탈퇴") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
             
            }
                
            }
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  page1.swift
//  GIF
//
//  Created by Hajar Nashi on 16/12/2022.
//

import SwiftUI

struct page1: View {
    var page: Page
    @State private var pageIndex = 0
    var body: some View {
        VStack(spacing: 20) {
/*            Image ("\(page.imageUrl)")
                .resizable()
                .scaledToFit()
                .padding()
                .cornerRadius(30)
                .background(.gray.opacity(0.10))
                .cornerRadius (10)
                .padding ()
            */
            
            Text(page.name)
                .font(.title)
            
            Text(page.description)
                .font(.subheadline)
                .frame(width: 300)
            if page.tag == 1{
                Button("Register", action: goToZero)
                    .buttonStyle(.bordered)
                    .font(.system(size: 25))
                    .foregroundColor(Color.white)
                    .frame(width: 313,height: 54)
                    .background(Color("Blue"))
                    .cornerRadius(8)
                    .padding()
                Button("log in", action: goToZero)
                 /*   .font(.system(size: 25))
                    .foregroundColor(Color.white)
                    .frame(width: 313,height: 54)
                    .background(Color("Blue"))
                    .cornerRadius(8)*/
            }else {
                Button("next", action: incrementPage)
            }
            Spacer()
        }
    }
    func goToZero() {
        pageIndex = 0
    }
    func incrementPage() {
        pageIndex += 1
    }
}

struct page1_Previews: PreviewProvider {
    static var previews: some View {
        page1(page: Page.samplePage)
    }
}

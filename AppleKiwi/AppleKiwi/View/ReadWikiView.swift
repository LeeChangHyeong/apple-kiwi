//
//  ReadWikiView.swift
//  AppleKiwi
//
//  Created by 임성균 on 2022/04/06.
//

import SwiftUI
import MarkdownView

struct ReadWikiView: View {
    private var markdown: String = """
    ## 제목
    ### 부제목
    *인스타그램* 아이디 @ddd.codd
    - 아무런
    """
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Hello, World!")
                        .font(.title)
                        .bold()
                        .padding()
                    Spacer()
                }
                MarkdownUI(body: markdown)
                    .onTouchLink { link in
                        print(link)
                        return false
                    }
                    .onRendered { height in
                        print(height)
                    }
                Spacer()
            }
        }
    }
}

struct ReadWikiView_Previews: PreviewProvider {
    static var previews: some View {
        ReadWikiView()
    }
}

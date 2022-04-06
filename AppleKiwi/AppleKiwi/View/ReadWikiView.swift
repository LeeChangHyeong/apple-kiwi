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
    ### Hi there 👋
    
    I'm Danny, a software engineer 💻 currently working at [Takeaway.com](https://takeaway.com) 🍲🥡
    
    I have a passion for clean code, Java, teaching, PHP, Lifeguarding and Javascript
    
    My current side project is [Markdown Profile](https://markdownprofile.com)
    
    [LinkedIn 💼](https://linkedin.com/in/dannyverpoort)
    
    [Twitter 🐦](https://twitter.com/dannyverp)
    
    [Website 🌍](https://dannyverpoort.dev/)
    
    [Email 📬](mailto:hallo@dannyverpoort.nl)
    
    [![ChangBro's github stats](https://github-readme-stats.vercel.app/api?username=ChangBro&show_icons=true&theme=default)](https://github.com/ChangBro/)
    """
    
    var body: some View {
        HStack {
            ScrollView {
                VStack {
                    HStack {
                        Text("창브로")
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
}

struct ReadWikiView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ReadWikiView()
        }
    }
}

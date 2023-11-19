//
//  HomeView.swift
//  Howdy
//
//  Created by Rashon Hyslop on 10/20/23.
//

import SwiftUI

struct Article: Identifiable {
    var id = UUID()
    var title: String
    var content: String
}

struct HomeView: View {
    var articles: [Article] = [
        Article(title: "Article 1", content: "Content for Article 1..."),
        Article(title: "Article 2", content: "Content for Article 2..."),
        // Add more articles as needed
    ]

    var body: some View {
        NavigationView {
            List(articles) { article in
                NavigationLink(destination: ArticleDetail(article: article)) {
                    Text(article.title)
                }
            }
            .navigationTitle("News and Blogs")
        }
    }
}

struct ArticleDetail: View {
    var article: Article

    var body: some View {
        VStack {
            Text(article.title)
                .font(.title)
            Text(article.content)
                .padding()
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}





#Preview {
    HomeView()
}

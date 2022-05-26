class Article < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    
    def self.processData(article_id,action)
        return []  unless ["activate", "deactive"].include?(action)
        Article.send(action, article_id)
    end

    def self.activate(article_id)
        puts "activate the status of #{article_id}"
    end

    def self.deactive(article_id)
        puts "activate the status of #{article_id}"
    end 

end

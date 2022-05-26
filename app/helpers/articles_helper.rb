module ArticlesHelper
    def activate(article_title)
        print 'activate the status of #{article_title}'
    end

    def deactive(article_title)
        print 'activate the status of #{article_title}'
    end 

    def processData(article_id,action)
        self.send(action, article_id)
    end
end

class Disease < ApplicationRecord
    has_many :posts
    has_many :topics, through: :posts
    
    # def topic_list
    #     all_topics = self.topics.each do |t|
    #         t.title
    #     end
    #    all_topics 
    # end
end

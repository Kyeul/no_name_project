class Post < ApplicationRecord
    #  페이지네이트
     paginates_per 5
     
     #댓글
     has_many :comments, dependent: :destroy
end

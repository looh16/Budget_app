class User < ApplicationRecord
    has_many: entities, foreign_key: 'author_id', dependent: :destroy
    has_many: groups, foreign_key: 'author_id', dependent: :destroy

    validates :name, presence: true, length: { maximum: 50, minimum: 3 }
end

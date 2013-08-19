module Notable
  class Note < ActiveRecord::Base
    belongs_to :notable, :polymorphic => true

    def to_s
      [updated_at,body].join(" - ")
    end
  end
end

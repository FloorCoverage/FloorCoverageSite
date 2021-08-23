module Filter
  extend ActiveSupport::Concern

  $days = %w[Sunday Monday Tuesday Wednesday Thursday Friday Saturday]

  module ClassMethods
    def filter(key, value)
      self.where("#{key}": value)
    end

    def foreign_key(key, value)
      self.where("#{key}_id": value.id)
    end

    def user(user)
      self.where(user_id: user.id)
    end

    def search(search)
      columns = self.column_names
      @return = self.where(
          columns
              .map {|c| "cast(#{c} as text) like :search" }
              .join(' OR '),
          search: "%#{search}%"
      )
      @return
    end

  end
end
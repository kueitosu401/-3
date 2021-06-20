class Book < ApplicationRecord

def index
  @Book = Book.all
end

end

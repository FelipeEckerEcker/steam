class Usuario < ApplicationRecord
    has many :jogos_na_biblioteca, class_name: "Biblioteca"

    validates :nome, :email, :nascimento, presence: true
    validates :email, uniqueness: true
end

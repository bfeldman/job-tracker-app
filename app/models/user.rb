class User < ApplicationRecord
    has_many :saved_jobs
    has_many :resumes
    has_many :jobs, through: :saved_jobs
    
    validates :username, uniqueness: true, presence: true
    validates :email, uniqueness: true
    validates :age, presence: true
    validates :address, presence: true
    validates :phone_number, presence: true, numericality: true
    has_secure_password
    
    def full_name
        self.first_name + " " + self.last_name
    end
end

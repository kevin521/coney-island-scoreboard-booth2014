class Score < ActiveRecord::Base

	validates_presence_of :name, :hole1, :hole2, :hole3

  	validates_numericality_of :hole1, :only_integer => true, :greater_than => 0
  	validates_numericality_of :hole2, :only_integer => true, :greater_than => 0
  	validates_numericality_of :hole3, :only_integer => true, :greater_than => 0

	
	scope :by_score, order('hole1+hole2+hole3')



  	def total_score
  		return self.hole1 + self.hole2 + self.hole3
  	end


end

# code here!
require 'pry'

class School

    def initialize (name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        if !@roster[grade] 
            @roster[grade] = []
        end    
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    
    end

    def sort
        sorted_roster = {}
        @roster.keys.each do |grade_key|
            sorted_roster[grade_key] = @roster[grade_key].sort
        end
        sorted_roster          
   end


#     def sort
#         @roster.values.each do |names|
#             names.sort!
#         end
#     @roster
# end

# def sort
#     @roster.keys.each do |grade_key|
#         @roster[grade_key].sort!
#     end
#     @roster
# end


end
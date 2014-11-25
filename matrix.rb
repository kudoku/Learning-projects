class RotateMatrix


	#for each collumn, turn it into a row
	def rotate_matrix(matrix_test)
		column_size = matrix_test[0].length
	 	# Go through each column and put the values in a row
	 	new_array = []
	 	(0..(column_size-1)).each do |current_column|
	 		new_row = []
	 		(0..(matrix_test.length-1)).each do |current_row|
	 			new_row << matrix_test[current_row][current_column]
	 			# puts "matrix_test at #{current_row} #{current_column}: #{matrix_test[current_row][current_column]}"
	 		end
	 		new_array << new_row.reverse
		end
		
    @y = new_array

		# new_array.each{|row| puts row.inspect}
	end
end


matrix_test = [
  [0, 1, 0, 0],
  [0, 1, 1, 0],
  [0, 0, 1, 0],
  [0, 0, 0, 0]
]

matrix_rotated = [
  [0, 0, 0, 0],
  [0, 1, 1, 0],
  [1, 1, 0, 0],
  [0, 0, 0, 0]
]


m = RotateMatrix.new
m.rotate_matrix(matrix_test)
puts m.instance_variable_get(:@y)











# #define collumns in array set to length
# #for every element in array, delete the first value and push into new array

# #carlos method 1
# 	def self.rotate_ryan(matrix)
# 		#get dimensions
# 		row_size = matrix.row_size
# 		column_size = matrix[0].column_size

# 		#create new array with swapped dimensions and reverse the values
# 		#array.new[array_size]
# 		rotated = Array.new(column_size) do |c|
# 			Array.new(row_size) do |r|
# 				matrix[r] ]column_size - c - 1 ]
# 			end
# 		end
# 	end

# #carlos method 2
# 	def self.rotate_carlos(matrix)
# 		row_length = matrix.length
# 		col_length = matrix.first.length # same as matrix[0].length
# 		new_matrix = []
# 		(col_length - 1).each do |row_index|
# 			new_row << matrix[row_index] [col_index]
# 		end
# 		new_matrix
# 	end

# 	#carlos method 3
# 	def self.rotate(matrix)
# 		matrix.transpose.reverse
# 	end

# end












	
 # write ruby method that will rotate a matrix 90 degrees counter-clockwise (or π/2 radians).

# Ex:

# 0 0 0 0
# 0 X 0 0
# X X X 0
# 0 0 0 0

# 0 0 0 0
# 0 0 X 0
# 0 X X 0
# 0 0 X 0

# class Matrix

#   def self.rotate(matrix)
#   end

#   # Method 1
#   def self.rotate_ryan(matrix)
#     # get dimensions
#    row_size = matrix.size
#    column_size = matrix[0].size
#    # create new array with swapped dimensions, and reverse the values
#    # Array.new(array_size) 
#    rotated = Array.new(column_size) do |c| 
#     Array.new(row_size) do |r| 
#       matrix[r][column_size - c - 1 ] 
#     end
#    end
#   end

#   # Method 2
#   def self.rotate_carlos(matrix)
#     row_length = matrix.length
#     col_length = matrix.first.length # matrix[0].length
#     new_matrix = []
#     (col_length-1).downto(0).each do |col_index|
#       new_row = []
#       (0..row_length-1).each do |row_index|
#         new_row << matrix[row_index][col_index]
#       end
#       new_matrix << new_row
#     end
#     new_matrix
#   end

#   # Method 3
#   def self.rotate(matrix)
#     matrix.transpose.reverse
#   end


	
# end


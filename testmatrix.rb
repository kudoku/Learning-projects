require 'test/unit'
require '..matrix'


class RotationTest < Test::Unit::TestCase
  def test_square_rotation
    matrix_test = [
      [0, 1, 0, 0],
      [0, 1, 1, 0],
      [0, 0, 1, 0],
      [0, 0, 0, 0]
    ]
    
    square_rotated = [
      [0, 0, 0, 0],
      [0, 1, 1, 0],
      [1, 1, 0, 0],
      [0, 0, 0, 0]
    ]
    
    assert_equal square_rotated, Matrix.rotate(matrix_test)
  end
  
  def test_rectangular_rotation
    rectangle = [
      [0, 1, 0],
      [1, 1, 1]
    ]
    
    rectangle_rotated = [
      [0, 1],
      [1, 1],
      [0, 1]
    ]
    
    assert_equal rectangle_rotated, Matrix.rotate(matrix_test)
  end
end

#Create new array and reverse x, y coordinates
#for each row grab next collumn and make new row
class Square
  class SquareError < StandardError; end
  attr_reader :sides

  def initialize(side1, side2, side3, side4)
    @sides = [side1, side2, side3, side4]
  end

  def kind
    validate_quadrilateral!

    if all_sides_equal?
      :square
    elsif opposite_sides_equal?
      :rectangle
    else
      :quadrilateral
    end
  end

  private

  def validate_quadrilateral!
    raise SquareError, "All sides must be greater than 0" if @sides.any? { |side| side <= 0 }

    @sides.each_with_index do |side, index|
      other_sides = @sides.reject.with_index { |_, i| i == index }
      if other_sides.sum <= side
        raise SquareError, "Invalid quadrilateral: sum of any three sides must exceed the fourth"
      end
    end
  end

  def all_sides_equal?
    sides.uniq.length == 1
  end

  def opposite_sides_equal?
    sides[0] == sides[2] && sides[1] == sides[3]
  end
end

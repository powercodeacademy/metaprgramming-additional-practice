describe Square do
  describe "#kind" do
    it "returns :square when all sides are equal" do
      expect(Square.new(2, 2, 2, 2).kind).to eq(:square)
      expect(Square.new(10, 10, 10, 10).kind).to eq(:square)
    end

    it "returns :rectangle when opposite sides are equal" do
      expect(Square.new(3, 4, 3, 4).kind).to eq(:rectangle)
      expect(Square.new(4, 3, 4, 3).kind).to eq(:rectangle)
      expect(Square.new(5, 8, 5, 8).kind).to eq(:rectangle)
    end

    it "returns :quadrilateral for other valid four-sided figures" do
      expect(Square.new(2, 3, 4, 5).kind).to eq(:quadrilateral)
      expect(Square.new(1, 2, 3, 4).kind).to eq(:quadrilateral)
    end

    it "raises an error for quadrilaterals with no size" do
      expect { Square.new(0, 0, 0, 0).kind }.to raise_error(Square::SquareError)
    end

    it "raises an error for quadrilaterals with negative sides" do
      expect { Square.new(3, 4, -5, 6).kind }.to raise_error(Square::SquareError)
    end

    it "raises an error for quadrilaterals violating quadrilateral inequality" do
      expect { Square.new(1, 1, 1, 10).kind }.to raise_error(Square::SquareError)
      expect { Square.new(2, 4, 2, 10).kind }.to raise_error(Square::SquareError)
      expect { Square.new(7, 3, 2, 1).kind }.to raise_error(Square::SquareError)
    end
  end
end

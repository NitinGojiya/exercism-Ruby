
class Matrix
  def initialize(matrix)
    @rows = matrix.split("\n").map { |row| row.split.map(&:to_i) }
  end

  def row(row_number)
    @rows[row_number - 1]
  end

  def column(col_number)
    @rows.map { |row| row[col_number - 1] }
  end
end
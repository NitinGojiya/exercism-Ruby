 class PhoneNumber
  def self.clean(input)
    digits = input.gsub(/\D/, '')
    if digits.length == 11 && digits[0] == '1'
      digits = digits[1..]
    end
    if digits.length != 10
      return nil
    end
    first_n = digits[0]
    third_n = digits[3]
    return nil if first_n == '0'
    unless first_n.match?(/[2-9]/) && third_n.match?(/[2-9]/)
      return nil
    end
    digits
  end
end

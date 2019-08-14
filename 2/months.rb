# frozen_string_literal: true

# Create hash with months and amount of days in month.
# In loop display those months for which count of days is 30.

months = {
  january: 30,
  february: 28,
  march: 31,
  april: 30,
  may: 31,
  june: 30,
  july: 31,
  august: 31,
  september: 30,
  october: 31,
  november: 30,
  december: 31
}

months.each do |month, day|
  puts "#{month.capitalize} have #{day} days" if day == 30
end

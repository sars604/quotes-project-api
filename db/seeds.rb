# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'
require 'pry'

csv_text = File.read(Rails.root.join('db', 'quotesnew.csv'))

csv = CSV.parse(csv_text, headers: true, :col_sep => ':', row_sep: :auto)
csv.map(&:to_hash)[0..85].each do |row|
  quotes = {
    rand_text: row['hello'],
    rand_cite: row['cite']
  }
  RandomQuote.create(quotes)
end

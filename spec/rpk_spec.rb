require 'rspec'
require 'rpk'

it("returns true if rock is the object and scissors is the argument") do
  game = RPS.new()
  expect(game.wins?("rock", "scissors")).to(eq(true))
end

it("returns true if scissors is the object and paper is the argument") do
  game = RPS.new()
  expect(game.wins?("rock", "scissors")).to(eq(true))
end

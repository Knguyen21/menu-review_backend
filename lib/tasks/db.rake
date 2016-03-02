namespace :db do
  desc "Load example data from db/examples.rb"
  task examples: :environment do
    require_relative '../../db/examples'
  end

  unless Rails.env == "production"
    desc "Drop and setup the development database with examples"
    task nuke_pave: %w(environment db:drop db:create db:migrate db:seed db:examples) do
      puts "Nuke and pave of #{Rails.env} complete."
    end
  end
end


require 'csv'
namespace :db do
  namespace :populate do
    desc 'Fill the meals table with meal data'
    task meals: :environment do
      Meal.transaction do
        CSV.foreach(Rails.root + 'data/meals.csv', headers: true) do |meal_row|
          meal = meal_row.to_hash
          next if Meal.exists? meal
          Meal.create!(meal)
        end
      end
    end
  end
end

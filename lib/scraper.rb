require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scrape
    def get_page
          doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
 
      binding.pry
  end
 Scraper.new.get_page
end
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
end

Scraper.new.print_courses

  #def print_courses
   # self.make_courses
    #Course.all.each do |course|
      #if course.title && course.title != ""
        #puts "Title: #{course.title}"
        #puts "  Schedule: #{course.schedule}"
        #puts "  Description: #{course.description}"
     # end
    #end
  #end



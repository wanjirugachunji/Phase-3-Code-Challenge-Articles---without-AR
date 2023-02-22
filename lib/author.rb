#require "pry"
class Author 
    attr_reader :name
     @@all = []
     def initialize(name)
        @name = name
        @@all << self
     end
     def self.all 
        @@all
     end
     def articles
        Article.all.select {|article|article.author == self} 

    
     end
     def articles_magazine
        Article.all.select {|article|article.magazine == self}
    end



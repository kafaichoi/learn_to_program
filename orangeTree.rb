class OrangeTree

  def initialize
    @age = 0
    @height = 0
    @status = 0
    @death_age = 300
    @fruit_age = 4
  end

  def height
    @height
  end

  def oneYearPasses
    @age += 1
    @height += 1
    @n_fruit = @age*1.5.to_i if @age >= @fruit_age
    puts "One year has passed"
    if @age >@death_age
      @n_fruit = 0
      puts "The tree is too old and it is dead. Thank you so much for giving us orange in these 300 years "
    end
  end

  def countTheOranges
    @n_fruit
  end

  def pickOneOrange
    if @age <= @fruit_age
      puts "The tree is still too young!"
    elsif @n_fruit >0
        @n_fruit -=1
        puts "You got a delicous orange. Thanks for the nuture!"
    else
      puts "There are no more orange to be picked this year"
    end
  end
end

orangetree =  OrangeTree.new
301.times { orangetree.oneYearPasses}
orangetree.pickOneOrange




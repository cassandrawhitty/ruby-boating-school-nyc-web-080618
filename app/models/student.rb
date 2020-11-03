class Student

    attr_reader :name

    @@all = []

    def initialize name
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def boating_tests #all tests for a student
        BoatingTest.all.select {|test| test.student == self} 
    end

    def all_instructors #all instructors for a student
        boating_tests.map {|test| test.instructor } 
    end

    def add_boating_test test_name, test_status, instructor
      BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student name
      all.find do |student|
          student.name == name
      end
    end

    # ATTEMPTS:

    # def student_grade_percentage #not working correctly
    #   count = 0
    #     boating_tests.find do |test| 
    #       if test.student == self
    #         if test.test_status == "passed"
    #           count += 1
    #         else 
    #           count
    #         end
    #       end
    #     end
    # end

end

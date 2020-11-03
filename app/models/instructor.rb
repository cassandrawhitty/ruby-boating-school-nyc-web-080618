class Instructor

    attr_reader :name

    @@all = []

    def initialize name
      @name = name
      @@all << self
    end

    def self.all
        @@all
    end

    def pass_student student, test_name, test_status="passed"
        BoatingTest.new(student, test_name, test_status, self)
    end

    def fail_student student, test_name, test_status="failed"
        BoatingTest.new(student, test_name, test_status, self)
    end

    def self.student_grade_percentage student_name
      total_tests = BoatingTest.all.select do |test|
        test.student.name == student_name
      end
      passed_tests = total_tests.select do |test|
        test.test_status == "passed"
      end.length
      return (passed_tests.to_f/total_tests.length.to_f) * 100
    end

end

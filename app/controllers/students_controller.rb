class StudentsController < ApplicationController
    def index
        render json: Student.all
    end

    def grades
        render json: Student.order(grade: :desc)
    end

    def highest_grade
        render json: Student.order(grade: :desc).limit(1)[0]
    end

end

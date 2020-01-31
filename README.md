# Student API 
Sometimes we won't be using views, next term we'll take a closer look at APIs but we have already seen how they often return JSON. This is a very simple API for creating student records. It follows REST conventions and the endpoints can be seen by running 
``` $ rails routes```.



# Installation 
 *  Clone the repo 
 * ``` $ rails db:setup ```

 # Challenge
 ## Core
 * Read through db/schema.rb,  app/controllers/students_controller.rb andapp/models/student.rb to get an understanding of the fields in the database 
 * If you're not sure about the enum syntax in student.rb check the [docs](https://api.rubyonrails.org/v5.2.4.1/classes/ActiveRecord/Enum.html)

 * Using rails console create, update, and destroy some records, check the results using either psql command line or DBeaver 

## Advanced 

* Use postman to perform CRUD operations on the data. Note the kind of responses you get and think about how they could be useful for another app

* Generate a new migration that adds a field to the students table

* Add some validation to the Student model for your new field
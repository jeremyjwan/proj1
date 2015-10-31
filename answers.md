# Q0: Why is this error being thrown?
The pokemon table has no controller for it. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
When we run rake db:migrate in terminal, the databases are populated with pokemons. The common factore is that they are all wild pokemons without trainers.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The line is a button and it links with the method capture in routes.

# Question 3: What would you name your own Pokemon?
Pineapplemonz

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
We pass in the path - @trainer_path() with the argument of current_trainer

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The code flash[:error] shows the error message on the simple form so that we can see what would appear when we render :new to refresh the page

# Give us feedback on the project and decal below!
Project was fun - more Pokemon themes the better!!!
# Extra credit: Link your Heroku deployed app

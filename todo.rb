# require 'SQlite3'
to_do_list = []
while true 
  system "clear"
  puts "To Do List:"
  
  to_do_list.each_with_index do |task,index|
    puts "#{index + 1}. #{task}"
  end

  puts "Options:"
  puts " A. Add a new task ➕"
  puts " B. Toggle Task Completion ✔️"
  puts " C. Delete a Task ❌"
  puts " D. Exit"
  puts "Please enter your choice"
  choice = gets.chomp.downcase
  if choice == "a"
    puts "What task would you like to add"
    new_task = gets.chomp.downcase
    to_do_list << new_task
  elsif choice == "c"
    puts "what task would you like to delete"
    delete_task = gets.chomp.strip.downcase
    to_do_list.delete(delete_task)
    puts "#{delete_task} has been deleted"
  elsif choice == "d"
    puts "goodbye cutie"
    break
  else
    puts "invalid option. Please try again"
  end
end





# require 'SQlite3'
to_do_list = []
while true 
  system "clear"
  puts "To Do List:"
  
  to_do_list.each_with_index do |task,index|
    status = task[:completed] ? "✔️ Completed" : "❌ Incomplete"
    puts "#{index + 1}. #{task[:task]} - #{status}"
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
    to_do_list << { task: new_task, completed: false}
  elsif choice == "b"
    puts "enter the number of the task to toggle completion"
    task_number = gets.chomp.to_i - 1
    if task_number >= 0 && task_number < to_do_list.length
      to_do_list[task_number][:completed] = !to_do_list[task_number][:completed]
      status = to_do_list[task_number][:completed] ? "✔️ Completed" : "❌ Incomplete"
      puts "Task #{task_number + 1} marked as #{status}"
    else
      puts"invalid task number!"
    end
  elsif choice == "c"
    puts "enter the number of the plant you would like to delete"
    task_number = gets.chomp.to_i - 1
    deleted_task = to_do_list.delete_at(task_number)
    puts "#{deleted_task[:task]} has been deleted."
  elsif choice == "d"
    puts "goodbye cutie"
    break
  else
    puts "invalid option. Please try again"
  end
end





require 'fileutils'

# Gets the contents of source directory and stores files into an Array
puts 'What is the source directory?'
source_directory = gets.chomp
source_files = Dir.children(source_directory)
puts "Contents of #{source_directory}:"
puts source_files.sort
puts "\n"

# Gets the contents of destination directory and stores files into an Array
puts 'What is the destination directory?'
destination_directory = gets.chomp
destination_files = Dir.children(destination_directory)
puts "Contents of #{destination_directory}:"
puts destination_files.sort
puts "\n"

# Gets the list of files to move from the source directory to the destination directory
files_to_move = source_files - destination_files
puts "These files will be moved. Do you want to continue? y|n"
puts files_to_move.sort 
confirm_move = gets.chomp.upcase
puts "\n"

if confirm_move == 'Y' && files_to_move.length >= 1
  files_to_move.each { |file|
    FileUtils.mv("test_folder/#{file}", "destination_folder/#{file}")
    File.delete("test_folder/#{file}") if File.exist?(p"test_folder/#{file}")
  }
  puts "Files moved:"
  puts files_to_move.sort
  puts "\n"
  
  new_destination_files = Dir.children(destination_directory)
  puts "Files in #{destination_directory}:"
  puts new_destination_files.sort
  puts "\n"
elsif files_to_move.length == 0
  puts "No files to move.\n"
else 
  puts "No files moved.\n"
end
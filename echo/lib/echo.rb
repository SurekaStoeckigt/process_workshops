class Echo

  def prompt
    puts "Say something:"
  end

  def capture_input
    prompt
    STDIN.gets.chomp
  end

  def make_decision
    input = capture_input
    while input != "exit" do
      puts "#{input}"
      puts " #{Time.now.strftime("%Y-%m-%d")} || #{Time.now.strftime("%H:%M")} || #{input}"
      input = capture_input
    end
    puts "#{input}"
    puts "Goodbye!"
  end

end

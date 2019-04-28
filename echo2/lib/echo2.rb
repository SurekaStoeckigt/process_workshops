class Echo

  def prompt
    puts "Say something: "
  end
  #
  def capture_input
    STDIN.gets.chomp
  end

  def format_input(input)
    puts " #{Time.now.strftime("%Y-%m-%d")} || #{Time.now.strftime("%H:%M")} || #{input}"
  end

  def make_decision
    input = capture_input
    while input != "exit" do
      format_input(input)
      puts "Say something: "
      input = capture_input
    end
    puts "Goodbye!"
  end

end

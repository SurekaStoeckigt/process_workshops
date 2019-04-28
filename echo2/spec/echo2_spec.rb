require "./lib/echo2.rb"

describe Echo do

  it "prompts the user for an input" do
    expect(STDOUT).to receive(:puts).with("Say something: ")
    Echo.new.prompt
  end

  it "exits when the user types in exit" do
    echo = Echo.new
    allow(STDIN).to receive(:gets).and_return("exit")
    echo.capture_input
    expect { echo.make_decision }.to output(/Goodbye!/).to_stdout
  end

  it "formats a user input when the user does not enter exit" do
    date = Time.now.strftime("%Y-%m-%d")
    time = Time.now.strftime("%H:%M")
    message = "This is a test"
    prompt = "Say something:"
    echo = Echo.new
    allow(STDIN).to receive(:gets).and_return(message, "exit")
    expect { echo.make_decision }.to output(/#{prompt}\n#{date} || #{time} || #{message}\n #{prompt}\nexit\nGoodbye!/).to_stdout
  end

  it "asks for a second message" do
    date = Time.now.strftime("%Y-%m-%d")
    time = Time.now.strftime("%H:%M")
    message1 = "Message1"
    message2 = "Message2"
    prompt = "Say something:"
    echo = Echo.new
    allow(STDIN).to receive(:gets).and_return(message1, message2, "exit")
    expect { echo.make_decision }.to output(/#{prompt}\n#{date} || #{time} || #{message1}\n #{prompt}\n#{date} || #{time} || #{message2} \nexit\nGoodbye!/).to_stdout
  end
end

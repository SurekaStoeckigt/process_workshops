require "./lib/echo.rb"

describe Echo do
  ## unit tests ##
  it "outputs a prompt to the user" do
    echo = Echo.new
    expect(STDOUT).to receive(:puts).with("Say something:")
    echo.prompt
  end

  it "receives an exit message and exits from the app" do
    echo = Echo.new
    allow(STDIN).to receive(:gets).and_return("exit")
    echo.capture_input
    expect { echo.make_decision }.to output(/Goodbye!/).to_stdout
  end

  ## feature tests ##

  it "asks the user for input and outputs it with time" do
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

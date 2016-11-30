require 'date'

def hello_siri(command, name="Human")

  if name == "Dave"
    raise SecurityError, "I'm sorry Dave, I can't let you do that."
  end

  if command.class != String
    raise ArgumentError, "Invalid Input - Unable to process."
  end

  case command
  when "Hello"
    return "Hello #{name}."
  when "What day is it?"
    return Date.today
  when "I'm feeling lucky"
    return rand(0..1000000)
  when "How do I become an amazing developer?"
    return "Google it!"
  else
    return "I don't understand. Should I call your emergency contact number?"
  end

end


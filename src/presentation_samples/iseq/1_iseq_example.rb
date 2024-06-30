def say_hello
  puts "Hello EuRuKo2024!"
end

iseq = RubyVM::InstructionSequence.of(method(:say_hello))
puts iseq.disasm




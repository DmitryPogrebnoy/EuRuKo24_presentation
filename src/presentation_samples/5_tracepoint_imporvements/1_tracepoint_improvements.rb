def say_hello
  puts "Hello EuRuKo2024!"
end

iseq = RubyVM::InstructionSequence.of(method(:say_hello))
trace = TracePoint.new(:call) do |tp|
  puts "Calling method '#{tp.method_id}'"
end

trace.enable(target: iseq)

say_hello
# => Calling method 'say_hello'
# => Hello EuRuKo2024!



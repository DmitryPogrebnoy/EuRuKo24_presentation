TracePoint.new(:call) do |tp|
  puts "Calling method '#{tp.method_id}'"
end.enable

def say_hello
  puts "Hello EuRuKo2024!"
end

say_hello

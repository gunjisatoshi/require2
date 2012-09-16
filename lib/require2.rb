module Kernel
  def require2(arg1, *arg2)
    if arg2.size.zero?
      $:.map {|path|
        Dir.glob(File.join(path, "#{arg1}{.rb,.so,.dll,.bundle}"))
      }.flatten.map {|i| require(i) }
    else
      [arg1, *arg2].map {|i| require(i) }
    end
  end
  module_function :require2
end

#!/usr/bin/env ruby
require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf.merge!(
  :SAVE_HISTORY => 1000,
  :HISTORY_FILE => "#{ENV['HOME']}/.irb_history",
  :AUTO_INDENT => true
)

if RUBY_VERSION < "1.9"
  class Symbol
    def to_proc
      Proc.new { |*args| args.shift.__send__(self, *args) }
    end
  end
end

class Object
  def local_methods(obj = self)
    (methods - Object.instance_methods).sort
  end

  def ri(method = nil)
    unless method && method =~ /^[A-Z]/ # if class isn't specified
      klass = self.kind_of?(Class) ? name : self.class.name
      method = [klass, method].compact.join('#')
    end
    puts `ri '#{method}'`
  end
end

def quick(repetitions = 100, &block)
  require 'benchmark'
  Benchmark.bmbm do |b|
    b.report { repetitions.times(&block) }
  end
  nil
end

def reset_irb
  exec $0
end

alias q exit

load File.dirname(__FILE__) + '/.railsrc' if $0 == 'irb' && ENV['RAILS_ENV']

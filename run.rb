#!/usr/bin/env ruby
libdir = File.join(File.dirname(__FILE__), '/lib')
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

require "boxing_circuit"

puts Circuits::BoxingCircuit.new.create_workout(1)
#!/usr/bin/env ruby


probe = []
File.open("#{ENV["HOME"]}/klipper_logs/klippy.log") do |f|
    while l = f.gets
        case l
        when /^PROBE_ACCURACY at/ 
            probe.clear
        when /^probe at [^ ]+,[^ ]+ is z=([^ ]+)/
            probe << $1.to_f
        end
    end
end

puts probe

mean = probe.sum.fdiv(probe.size)
variance = probe.sum(0.0) {|i| (i - mean) ** 2 } / (probe.size - 1)
stddev = Math.sqrt(variance)
$stderr.puts "size: %d, min: %f, max: %f, stddev: %f" % [probe.size, probe.max, probe.min, stddev]


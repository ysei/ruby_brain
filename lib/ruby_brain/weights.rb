module RubyBrain
# class ArrayP < Array # Queue
#   def initialize
##    @num__size = 0
##    @num_a__size = [@num__size]
#     super
#   end

##  def size
##    @num_a__goukei__thread

# def get__num__trd
#   self.count { |v|
#     case v[0]
#     when Thread then true
#     when nil	  then true
#     end
#   }
# end

  class WeightContainer
#   @@num__spe = 32

    def initialize(num_units_list)
      @w_3d = []

#     num__spe = @@num__spe
#     @num__spe = @@num__spe
#     @trd__mrb = Trd__mrb.new(@a__q) { |@a__q| # a__q # , num__spe
#	qjoin(@a__q) # a__q # , num__spe
#     }

      num_units_list.each_cons(2) do |num_units_on_left_layer, num_units_on_right_layer|
        @w = []
        (num_units_on_left_layer + 1).times do |i|
          @w[i] = []
          num_units_on_right_layer.times do |j|
            @w[i][j] = Random.rand(2.0) - 1.0
          end
        end
        @w_3d << @w
      end
    end

    def load_from(weights_set_source)
      @w_3d = weights_set_source
    end

    def get_weights_as_array
      @w_3d.dup
    end

    def overwrite_weights(weights_set_source)
      # weights_set_source.each_with_index do |weights, i|
      #   next if i >= @w_3d.size
      #   weights.each_with_index do |w, j|
      #     next if j >= @w_3d[i].size
      #     w.size.times do |k|
      #       @w_3d[i][j][k] = w[k] unless w[k].nil?
      #     end
      #   end
      # end

      @w_3d.zip(weights_set_source).each_with_index do |wl, i|
        next if wl[1].nil?
        wl[0].zip(wl[1]).each_with_index do |ww, j|
          next if ww[1].nil?
          ww[0].zip(ww[1]).each_with_index do |w, k|
            @w_3d[i][j][k] = w[1] || w[0]
          end
        end

      end
    end

    def num_sets
      @w_3d.size
    end

    def weights_of_order(order_number)
      @w_3d[order_number]
    end

    def dump_to_yaml(file_name=nil)
##    @trd__mrb.join
##    qjoin(@a__q)

      if file_name
        File.open file_name, 'w+' do |f|
          YAML.dump(@w_3d, f)
        end
      end
      # # @w_3d.to_yaml
    end

    def load_from_yaml_file(yaml_file)
      overwrite_weights(YAML.load_file(yaml_file))
    end

    def each_weights
      @w_3d.each do |weights|
        yield weights
      end
    end

    def each_weights_with_index
      @w_3d.each_with_index do |weights, i|
        yield weights, i
      end
    end

#   def each_weights(&b)
##    self.each do |weights|
#	doujiheikou(__method__, b) # .to_sym
##	doujiheikou(__method__, b) { |weights| # .to_sym
##	  yield weights
##	  b.(weights)		# c 
##	}
##    }
#   end

#   def each_weights_with_index(&b)
#   def each_with_index__doujiheikou(weights, i, &b)
#   def each_with_index__doujiheikou(&b)
##    @w_3d.each_with_index { |wl, j|
##    self.each_with_index { |wl, j|
#	doujiheikou(__method__, b) # .to_sym
##	doujiheikou(__method__, b) { |wl, j| # .to_sym
##	  yield wl, j
##	  b.(wl, j)		# c 
##	doujiheikou(__method__, b) { |weights, i| # .to_sym
##	  yield weights, i
##	  b.(weights, i)	# c 
##	}
##    }
#   end

#   def doujiheikou(msd = nil, &b)
##    unless msd.nil?
##	case msd # .to_sym
##	when :each_weights
##	  @w_3d.each do |weights|
##	    @a__q<< [Trd__mrb.new(weights, b) { |weights, b|	# p 	# .dup
##	      yield weights
###	    }.sleep, [msd, weights, b]] # .to_sym
##	    }.sleep, [weights, b]]
##	  end
##	when :each_weights_with_index
#	  @w_3d.each_with_index do |weights, i|
#	    @a__q<< [Trd__mrb.new(weights, i, b) { |weights, i, b|	# p 	# .dup
#	      yield weights, i
##	    }.sleep, [msd, weights, i, b]] # .to_sym
#	    }.sleep, [weights, i, b]]
#	  end
##	end
##    end
#     @a__q<<	# p 
#	[Trd__mrb.new {false}.sleep,	       Proc.new {false},	   'Trd__mrb__--__owari']
#	[Trd__mrb.new {sleep 68; false}.sleep, Proc.new {sleep 68; false}, 'Trd__mrb__--__owari']
##	['Trd__mrb__--__owari']

##    @num_a__goukei__thread[0 .. -1] = @num_a__goukei__thread[-1]	# memo .slice higokan mruby:70410200 monami-ya.mrb:60510200
#   end

#   def qjoin(a__q) # , num__spe
#     flg = false
#     a__lq = ArrayP.new([])
#     loop {
#	sleep 0
#	num__trd = a__lq.get__num__trd
#	flg && 0 == num__trd && break
#
#	num__trd >= @num__spe && redo # num__spe
#	a__q.empty? && redo
#
#	cpb = a__q.shift # .dup
#	flg ||= 'Trd__mrb__--__owari' == cpb[-1]
#	flg || ('Trd__mrb__--__owari' == cpb[-1] && flg ||= true)
#
##	begin				# fuguai taisaku ( d?rty hack )
#	  cpb[0].start
##	  cpb[0].nil? || cpb[0].start
##	rescue
##	  # saikidou
##	end
#	a__lq.push(cpb) # .dup
#
#	r = nil
#	i = 0
#	a__lq.each_with_index { |cpb, i|
##	  case cpb
##	  when Array
#	    case cpb[0]
##	    when Thread
##	      r = cpb[0].join	# case cpb when Thread # case cpb when Thread
##	    when nil
##	      r = nil
#	    else
#	      r = cpb[0]
#	    end
##	  end
#         case r
#	  when nil			# fuguai taisaku ( d?rty hack )
#	    cpb[0] = [Trd__mrb.new(*cpb[1]) { |weights, i, &b|	# p  # .dup
#	    cpb[0] = [Trd__mrb.new(*cpb[1]) { |weights, i, b|	# p  # .dup
#	      yield weights, i
##	    }, [msd, weights, i, b]] # .to_sym
#	    }, [weights, i, b]]
#	    a__lq[i] = cpb # .dup
#	  case false
#	  else break
#	  end
#	}
#	case r when Array then a__lq.delete_at(i) end
#     }
#   end
  end
end

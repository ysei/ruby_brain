module RubyBrain
# class ArrayP < Array # Queue
#   def initialize
##    @num__size = 0
##    @num_a__size = [@num__size]
#     super
#   end

##  def size
##    @num_a__goukei__thread

# def get__num__totyuu
#   r = 0
#   self.each { |v|
#     case v[0] when Thread then r +=1 end
#   }
#   r
##   num__goukei__thread = nil # 0
##   loop { # break if
##     num_a__goukei__thread =
##     (@@num_a__goukei__thread.pop || (sleep 0; redo)) # .dup
##     break
##   }
# end

  class WeightContainer
#   @@num__spe = 32
##  @@num_a__goukei__thread = [0] # Queue.new
##  @@a__owari = [] # Queue.new

##  attr_accessor :num_a__goukei__thread

    def initialize(num_units_list)
      @w_3d = []

#     num__spe = @@num__spe
#     @num__spe = @@num__spe
##    @a__owari = @@a__owari
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
#     doujiheikou(__method__, &b) # .to_sym
##    doujiheikou(__method__, &b) { |weights| # .to_sym
##	yield weights
##    }
#   end

#   def each_weights_with_index(&b)
#     doujiheikou(__method__, &b) # .to_sym
##    doujiheikou(__method__, &b) { |weights, i| # .to_sym
##	yield weights, i
##    }
#   end

#   def doujiheikou(msd = nil, &b)
##    unless msd.nil?
##	case msd # .to_sym
##	when :each_weights
##	  @w_3d.each do |weights|
##	    @a__q.push(Trd__mrb.new(weights, &b) { |weights, &b|	# .dup
##	      yield weights
###	    }.sleep, [msd, weights, &b]) # .to_sym
##	    }.sleep, [weights, &b]) # .to_sym
##	  end
##	when :each_weights_with_index
#	  @w_3d.each_with_index do |weights, i|
#	    @a__q.push(Trd__mrb.new(weights, i, &b) { |weights, i, &b|	# .dup
#	      yield weights, i
##	    }.sleep, [msd, weights, i, &b]) # .to_sym
#	    }.sleep, [weights, i, &b]) # .to_sym
#	  end
##	end
##    end
##	    if num_a__goukei__thread >= @@num__spe # @num__spe
##	      yield weights
##	    else
#     @a__q<< 'Trd__mrb__--__owari'

##    @@num_a__goukei__thread.push(num__goukei__thread) # .dup
##    @@num_a__goukei__thread.push(@num_a__goukei__thread[-1]) # .dup
##    @num_a__goukei__thread[0 .. -1] = @num_a__goukei__thread[-1]	# memo .slice higokan mruby:70410200 monami-ya.mrb:60510200
##    @num_a__goukei__thread = [@num_a__goukei__thread[-1]]
#   end

#   def qjoin(a__q) # , num__spe
#     flg = false
#     a__lq = ArrayP.new([])
#     loop {
#	sleep 0
#	num__totyuu = a__lq.get__num__totyuu
#	flg && 0 == num__totyuu && break
#
#	num__totyuu >= @num__spe && redo # num__spe
#	a__q.empty? && redo
#
#	cpb = a__q.shift
#       flg ||= 'Trd__mrb__--__owari' == cpb[0]
#
#	cpb[-1][0].start
#	a__lq.push(cpb)
#
#	r = nil
#	i = 0
#	a__lq.each_with_index { |cpb, i|
##	case cpb
##	when Array
#	  case cpb[0]
##	  when Thread
##	    r = cpb[0].join # case cpb when Thread # case cpb when Thread
#	  when nil
#	    r = nil
#	  else
#	    r = cpb[0]
#	  end
##	end 
#	if r.nil?
#	  cpb[0] = [Trd__mrb.new(*cpb[1]) { |weights, i, &b|	# p  # .dup
#	    yield weights, i
##	  }, [msd, weights, i, &b]] # .to_sym
#	  }, [weights, i, &b]] # .to_sym
#	else
#	  break
#	end
#	case r when Array then a__lq.delete_at(i) end
#     }
#   end
  end
end

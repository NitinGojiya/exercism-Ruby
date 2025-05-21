class Tournament

  def self.tally(input)
    @input = input.split(/\n/)
    team_status = []
    @win_match_data ={}
    @input.each_with_index do |match, index|
      team_status << match
    end
    team_status.each_with_index do |status, index|
    one_status = status.split(';')
      # win data store
      if one_status[2] == 'win'
        @win_match_data["#{one_status[0]}"] = {'name'=>one_status[0], 'MP'=>0 , 'W'=>0, 'D'=>0,'L'=>0,'P'=>0} if   !@win_match_data.keys.include?(one_status[0])
        if @win_match_data.keys.include?(one_status[0]) && one_status[2] == 'win'
         one_match_data = @win_match_data["#{one_status[0]}"]
         one_match_data['MP'] +=1
         one_match_data['W'] += 1
         one_match_data['P'] += 3
        end
        @win_match_data["#{one_status[1]}"] = {'name'=>one_status[1], 'MP'=>0 , 'W'=>0, 'D'=>0,'L'=>0,'P'=>0} if   !@win_match_data.keys.include?(one_status[1])
       if @win_match_data.keys.include?(one_status[1]) && one_status[2] == 'win'
         one_match_data = @win_match_data["#{one_status[1]}"]
         one_match_data['MP'] += 1
         one_match_data['L'] += 1
        #  one_match_data['P'] -= 1
       end
      end

      # loss data store
       if one_status[2] == 'loss'
        @win_match_data["#{one_status[0]}"] = {'name'=>one_status[0], 'MP'=>0 , 'W'=>0, 'D'=>0,'L'=>0,'P'=>0} if   !@win_match_data.keys.include?(one_status[0])
        if @win_match_data.keys.include?(one_status[0]) && one_status[2] == 'loss'
         one_match_data = @win_match_data["#{one_status[0]}"]
         one_match_data['MP'] += 1
         one_match_data['L'] += 1
        #  one_match_data['P'] -= 1
        end
        @win_match_data["#{one_status[1]}"] = {'name'=>one_status[1], 'MP'=>0 , 'W'=>0, 'D'=>0,'L'=>0,'P'=>0} if   !@win_match_data.keys.include?(one_status[1])
       if @win_match_data.keys.include?(one_status[1]) && one_status[2] == 'loss'
         one_match_data = @win_match_data["#{one_status[1]}"]
         one_match_data['MP'] += 1
         one_match_data['W'] += 1
         one_match_data['P'] += 3
       end
      end

        # draw match data
        if one_status[2] == 'draw'
        @win_match_data["#{one_status[0]}"] = {'name'=>one_status[0], 'MP'=>0 , 'W'=>0, 'D'=>0,'L'=>0,'P'=>0} if   !@win_match_data.keys.include?(one_status[0])
        if @win_match_data.keys.include?(one_status[0]) && one_status[2] == 'draw'
         one_match_data = @win_match_data["#{one_status[0]}"]
         one_match_data['MP'] += 1
         one_match_data['D'] += 1
         one_match_data['P'] += 1
        end
        @win_match_data["#{one_status[1]}"] = {'name'=>one_status[1], 'MP'=>0 , 'W'=>0, 'D'=>0,'L'=>0,'P'=>0} if   !@win_match_data.keys.include?(one_status[1])
       if @win_match_data.keys.include?(one_status[1]) && one_status[2] == 'draw'
         one_match_data = @win_match_data["#{one_status[1]}"]
         one_match_data['MP'] += 1
         one_match_data['D'] += 1
         one_match_data['P'] += 1
       end
      end
  end

 format_results(sort_results)

end

 def self.sort_results
    @win_match_data.values.sort_by! { |i|
      [ -i["P"], i["name"] ]
    }
  end
  def self.format_results(sorted_results)
    output = "Team                           | MP |  W |  D |  L |  P\n"
    sorted_results.each { |key|
    output += "#{key['name'].ljust(31)}| #{key['MP'].to_s.rjust(2)} | #{key['W'].to_s.rjust(2)} | #{key['D'].to_s.rjust(2)} | #{key['L'].to_s.rjust(2)} | #{key['P'].to_s.rjust(2)}\n"
    }
    output
  end
end



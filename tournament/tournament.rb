class Tournament
  def self.tally(input)
    header = "Team                           | MP |  W |  D |  L |  P\n"
    input = input.strip
    return header if input == ""

    table = ""

    input.each_line do |line|
      line = line.strip
      team1 = ""
      until line.start_with?(";")
        team1 += line[0]
        line = line[1..-1]
      end
      line = line[1..-1]
      team2 = ""
      until line.start_with?(";")
        team2 += line[0]
        line = line[1..-1]
      end
      line = line[1..-1]
      result = line

      if table.include?(team1.ljust(30))
        row = table.split("\n").select { |r| r.start_with?(team1.ljust(30)) }[0]
        cols = row.split("|").map(&:strip)
        mp = cols[1].to_i + 1
        w = cols[2].to_i
        d = cols[3].to_i
        l = cols[4].to_i
        p = cols[5].to_i
        if result == "win"
          w += 1
          p += 3
        elsif result == "loss"
          l += 1
        else
          d += 1
          p += 1
        end
        table = table.gsub(/^#{team1.ljust(30)}.*$/, team1.ljust(30) + " |  #{mp} |  #{w} |  #{d} |  #{l} | #{p.to_s.rjust(2)}")
      else
        if result == "win"
          mp, w, d, l, p = "1", "1", "0", "0", 3
        elsif result == "loss"
          mp, w, d, l, p = "1", "0", "0", "1", 0
        else
          mp, w, d, l, p = "1", "0", "1", "0", 1
        end
        table += team1.ljust(30) + " |  #{mp} |  #{w} |  #{d} |  #{l} | #{p.to_s.rjust(2)}\n"
      end

      if table.include?(team2.ljust(30))
        row = table.split("\n").select { |r| r.start_with?(team2.ljust(30)) }[0]
        cols = row.split("|").map(&:strip)
        mp = cols[1].to_i + 1
        w = cols[2].to_i
        d = cols[3].to_i
        l = cols[4].to_i
        p = cols[5].to_i
        if result == "win"
          l += 1
        elsif result == "loss"
          w += 1
          p += 3
        else
          d += 1
          p += 1
        end
        table = table.gsub(/^#{team2.ljust(30)}.*$/, team2.ljust(30) + " |  #{mp} |  #{w} |  #{d} |  #{l} | #{p.to_s.rjust(2)}")
      else
        if result == "win"
          mp, w, d, l, p = "1", "0", "0", "1", 0
        elsif result == "loss"
          mp, w, d, l, p = "1", "1", "0", "0", 3
        else
          mp, w, d, l, p = "1", "0", "1", "0", 1
        end
        table += team2.ljust(30) + " |  #{mp} |  #{w} |  #{d} |  #{l} | #{p.to_s.rjust(2)}\n"
      end
    end

    rows = table.strip.split("\n")
    sorted = rows.sort_by do |r|
      cols = r.split("|").map(&:strip)
      [-cols[5].to_i, cols[0]]
    end

    header + sorted.join("\n") + "\n"
  end
end

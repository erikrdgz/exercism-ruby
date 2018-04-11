class Complement
    def self.of_dna strand
      return '' if /[^CATG]/ =~ strand

      strand.gsub(/[CATG]/) do |match|
        case match
        when 'G' then 'C'
        when 'C' then 'G'
        when 'T' then 'A'
        when 'A' then 'U'
        else ''
        end
      end
    end
end

# class Complement
#     def self.of_dna strand
#       return '' if /[^CATG]/ =~ strand
#       strand.tr('CGTA', 'GCAU')
#     end
# end

def fix(names)
    group = ""
    names.each do |pair|
        if pair.include? (pair[2])
            group << pair[0].capitalize + ", " + pair[1].capitalize + ", and " + pair[2].capitalize + "<br>"
        else
            group << pair[0].capitalize + " and " + pair[1].capitalize + "<br>"
        end
    end
    group
end
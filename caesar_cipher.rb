def caesar_cipher(str, n)
  a = str.split("")
  l = "abcdefghijklmnopqrstuvwsyz".split("")
  out = []
  a.each do |e|
    dcse = true
    if l.include?(e.downcase) 
      if  e == e.downcase
        dcse = true
      else
        dcse = false
      end
    else
      dcse = nil
    end
    case dcse
    when nil then out << e
    when true then  
        out << l[(l.index(e) + n)%26]
    when false then
        out << l[(l.index(e.downcase) + n) % 26].upcase
    end
  end
  out.join("")
end
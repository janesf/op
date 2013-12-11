def caesar_cipher(str, n)
  a = str.split("")
  l = "abcdefghijklmnopqrstuvwsyz".split("")
  out = []
  a.each do |e|
    dcse = nil
    if l.include?(e.downcase) 
      dcse =  (e == e.downcase)
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

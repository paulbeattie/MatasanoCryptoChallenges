str = "1c0111001f010100061a024b53535009181c"
cstr = "686974207468652062756c6c277320657965"

hex_string = [str].pack('H*').bytes
hex_c_string = [cstr].pack('H*').bytes

enc_str = ''

for i in 0..(hex_string.length-1)
  enc_str << (hex_string[i] ^ hex_c_string[i])
end

puts enc_str.unpack('H*')

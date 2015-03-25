require_relative 'modules/conversion'

include Conversion

STR = "1c0111001f010100061a024b53535009181c"
KEY_STR = "686974207468652062756c6c277320657965"

hex_string = decode_hex(STR).bytes
hex_key_string = decode_hex(KEY_STR).bytes

enc_str = ''

for i in 0..(hex_string.length-1)
  enc_str << (hex_string[i] ^ hex_key_string[i])
end

p encode_hex(enc_str)

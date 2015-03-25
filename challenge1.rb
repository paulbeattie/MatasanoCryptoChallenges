require_relative 'modules/conversion'

include Conversion

STR = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"
EXPECTED_STR = "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t"

hex_string = decode_hex(STR)
base_string =  b64_strict_encode(hex_string)
p base_string
p base_string == EXPECTED_STR
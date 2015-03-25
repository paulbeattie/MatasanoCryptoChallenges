require 'Base64'

module Conversion

  def decode_hex(hex_str)
    [hex_str].pack('H*')
  end

  def b64_strict_encode(str)
    Base64.strict_encode64(str)
  end

  def encode_hex(ascii_str)
    ascii_str.unpack('H*').first
  end

end
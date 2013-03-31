require 'digest'
require "digest-trip/version"

require 'nkf'
require 'digest/sha1'
require 'base64'

module Digest
  class Trip < Digest::Class
    def reset
    end

		def update key
			@key = key
		end

		def finish
			key = NKF.nkf '-sxm0', @key

			if key.bytesize >= 12
				hash = Base64.encode64 Digest::SHA1.digest(key)
				hash[0, 12].gsub '+', '.'
			else
				salt = (key + "H.")[1, 2]
				salt = salt.gsub %r"[^\.-z]", "."
				salt = salt.tr ":;<=>?@[\\]^_`", "ABCDEFGabcdef"

				hash = key.crypt salt
				hash[-10, 10]
			end
		end
  end
end

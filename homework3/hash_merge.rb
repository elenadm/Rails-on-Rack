def hash_merge hash1, hash2
  hash2.each_key { |k| hash1[k] = hash2[k] }
  hash1
end


def hash_merge hash1, hash2
  hash1.each_key { |k| hash1[k] = hash2[k] if hash2.has_key?(k) }
  hash2.each_key { |k| hash1.store(k, hash2[k]) unless hash1.has_key?(k) }
  hash1
end


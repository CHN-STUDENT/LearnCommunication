k = 4; % msg size (bits)
p = [1 1 0 1]; % g(x)
n = k + length(p) - 1; % msg+crc size (bits)
msg = [0 1 1 1]; % generate 16 msg tuples
code = encode(msg, n, k, 'cyclic', p) % encode (msg+crc)

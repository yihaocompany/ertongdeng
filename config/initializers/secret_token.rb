# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Lamp::Application.config.secret_key_base = 'f3b2ec2fa7ae30ced54960e06760620248a8f02342f2ac140f2778f7e4ec64a33acfd1708a9b2143466e6a6d9d6ef1bdb71c24903cc004f9947283db8996bd57'

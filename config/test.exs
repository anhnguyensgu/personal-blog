import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :web_app, WebApp.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "ijwLUx4/8H7yBOczQSOo2qmwnSzGtCRfOKziCPncXZwV+SuJSLVRACzdcHLh1Oby",
  server: false

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :web_app, WebApp.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "vUQdwwVOrC6edooYXUGdwQDIeh4bcyhkgExBJAEnmEi6R515zdrDklVgpHY3s5Eg",
  server: false

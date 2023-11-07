import requests
for prefix in requests.get("https://developers.google.com/static/search/apis/ipranges/googlebot.json").json()["prefixes"]:
  if prefix.get("ipv4Prefix", None):
    print(prefix["ipv4Prefix"])

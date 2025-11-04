import json
with open('Python//data.json', 'r') as file:
    json_data = file.read()
data = json.loads(json_data)
designations_with_null_url = [item['DESIGNATION'] for item in data['result']['list'] if item['URL'] is None]
print(designations_with_null_url)

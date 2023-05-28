import matlab.net.*
import matlab.net.http.*
api_endpoint = "https://api.openai.com/v1/engines/davinci/completions";
api_key = convertCharsToStrings(getenv("APIkey"));
prompt = "Please introduce Cloud Computing"

parameters = struct('prompt',prompt, 'max_tokens',100);
headers = matlab.net.http.HeaderField('Content-Type', 'application/json');
headers(2) = matlab.net.http.HeaderField('Authorization', ['Bearer ' + api_key]);
request = matlab.net.http.RequestMessage('post',headers,parameters);
response = send(request, URI(api_endpoint));
response_text = response.Body.Data;
response_text = response_text.choices(1).text;
disp(response_text);

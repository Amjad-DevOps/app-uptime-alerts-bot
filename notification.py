from json import dumps
import sys
from httplib2 import Http
input_str = sys.argv[1]
print(input_str)​  

def main():
    """Hangouts Chat incoming webhook quickstart."""
    url = '<gchat webhook url>'
    bot_message = {
        'text': input_str}
    message_headers = {'Content-Type': 'application/json; charset=UTF-8'}
    http_obj = Http()
    response = http_obj.request(
        uri=url,
        method='POST',
        headers=message_headers,
        body=dumps(bot_message),
    )
    print(response)


if __name__ == '__main__':
    main()

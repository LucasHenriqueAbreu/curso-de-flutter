import 'dart:io';

void main() {
  var httpClient = HttpClient();
  httpClient
      .getUrl(Uri.parse('https://api.chucknorris.io/jokes/random'))
      .then((request) => request.close())
      .then((response) {
    print(response);
  });
}

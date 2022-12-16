// Callback: function (regular or lambda) that can be called within another function
main() {
  getUser('100', (Map user) {
    print(user);
  });
}

void getUser(String id, Function cb) {
  Map user = {
    'id': id,
    'name': 'Jose Alberto',
  };

  cb(user);
}

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<user> SignUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
        return credential.user;
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<user> SignInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch (e) {
      print(e);
    }
    return null;
  }
}

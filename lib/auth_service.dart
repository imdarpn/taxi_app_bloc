import 'package:firebase_auth/firebase_auth.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthService {
  static final _firebaseAuth = FirebaseAuth.instance;

  static Future<User> signInWithApple(
      {List<AppleIDAuthorizationScopes> scopes = const []}) async {
    await FirebaseAuth.instance.signOut();
    // 1. perform the sign-in request
    final result = await SignInWithApple.getAppleIDCredential(
      scopes: scopes,
    );
    print("Apple Login Credential ---- $result");
    final appleIdCredential = result;
    final oAuthProvider = OAuthProvider('apple.com');
    final credential = oAuthProvider.credential(
      idToken: appleIdCredential.identityToken!,
      accessToken: appleIdCredential.authorizationCode,
      // idToken: String.fromCharCodes(appleIdCredential.identityToken!),
      // accessToken: String.fromCharCodes(appleIdCredential.authorizationCode!),
    );
    final userCredential = await _firebaseAuth.signInWithCredential(credential);

    print("Name: ${userCredential.user?.displayName}");
    final firebaseUser = userCredential.user!;
    if (scopes.contains(AppleIDAuthorizationScopes.fullName)) {
      // final fullName = appleIdCredential.givenName;
      if (appleIdCredential.givenName != null &&
          appleIdCredential.familyName != null) {
        final displayName =
            '${appleIdCredential.givenName} ${appleIdCredential.familyName}';
        await firebaseUser.updateDisplayName(displayName);
      }
    }
    return firebaseUser;
/*    // 2. check the result
    switch (result) {
      case AuthorizationStatus.authorized:
        final appleIdCredential = result;
        final oAuthProvider = OAuthProvider('apple.com');
        final credential = oAuthProvider.credential(
          idToken: appleIdCredential.identityToken!,
          accessToken: appleIdCredential.authorizationCode,
          // idToken: String.fromCharCodes(appleIdCredential.identityToken!),
          // accessToken: String.fromCharCodes(appleIdCredential.authorizationCode!),
        );
        final userCredential = await _firebaseAuth.signInWithCredential(credential);
        final firebaseUser = userCredential.user!;
        if (scopes.contains(AppleIDAuthorizationScopes.fullName)) {
          // final fullName = appleIdCredential.givenName;
          if (appleIdCredential.givenName != null &&
              appleIdCredential.familyName != null) {
            final displayName = '${appleIdCredential.givenName} ${appleIdCredential.familyName}';
            await firebaseUser.updateDisplayName(displayName);
          }
        }
        return firebaseUser;
      case AuthorizationStatus.error:
        throw PlatformException(
          code: 'ERROR_AUTHORIZATION_DENIED',
          message: result.error.toString(),
        );

      case AuthorizationStatus.cancelled:
        throw PlatformException(
          code: 'ERROR_ABORTED_BY_USER',
          message: 'Sign in aborted by user',
        );
      default:
        throw UnimplementedError();
    }*/
  }
}

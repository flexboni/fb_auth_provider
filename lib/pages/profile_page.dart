import 'package:fb_auth_provider/providers/profile/profile_provider.dart';
import 'package:fb_auth_provider/providers/profile/profile_state.dart';
import 'package:fb_auth_provider/utils/error_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart' as fbAuth;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static const String routeName = '/profile';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late final ProfileProvider profileProvider;
  late final void Function() _removeListener;

  @override
  void initState() {
    super.initState();
    profileProvider = context.read<ProfileProvider>();
    _removeListener = profileProvider.addListener(
      errorDialogListener,
      fireImmediately: false,
    );

    _getProfile();
  }

  void errorDialogListener(ProfileState profileState) {
    if (profileState.profileStatus == ProfileStatus.error) {
      errorDialog(context, profileState.error);
    }
  }

  @override
  void dispose() {
    _removeListener();
    super.dispose();
  }

  void _getProfile() {
    final String uid = context.read<fbAuth.User>().uid;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileProvider>().getProfile(uid: uid);
    });
  }

  Widget _buildProfile() {
    final profileState = context.watch<ProfileState>();
    if (profileState.profileStatus == ProfileStatus.initial) {
      return Container();
    } else if (profileState.profileStatus == ProfileStatus.loading) {
      return Center(child: CircularProgressIndicator());
    } else if (profileState.profileStatus == ProfileStatus.error) {
      return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/error.png',
              width: 75,
              height: 75,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 20.0),
            Text(
              'Oops!\nTry again',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.red,
              ),
            ),
          ],
        ),
      );
    }

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInImage.assetNetwork(
            placeholder: 'assets/images/loading.gif',
            image: profileState.user.profileImage,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 19.0),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '- id: ${profileState.user.id}',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  '- name: ${profileState.user.name}',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  '- email: ${profileState.user.email}',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  '- point: ${profileState.user.point}',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  '- rank: ${profileState.user.rank}',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: _buildProfile(),
    );
  }
}

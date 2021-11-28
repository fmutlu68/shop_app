part of 'package:fluttter_shop_app/view/home/account/view/account_view.dart';

extension _AccountViewUserInfoAppBar on _AccountViewState {
  AppBar get buildUserInfoAppBar => AppBar(
        toolbarHeight: calculateDynamicHeight(32),
        backgroundColor: colorService.getColor(AppColors.PRIMARY.value),
        leading: buildBackButton,
        actions: [
          buildModifyUserProfileButton,
        ],
        bottom: buildUserInfoCard,
      );

  Column get buildBackButton {
    return Column(
      children: [
        BackButton(),
      ],
    );
  }

  Column get buildModifyUserProfileButton {
    return Column(
      children: [
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.mode_edit),
        ),
        Spacer(
          flex: 5,
        ),
      ],
    );
  }

  PreferredSize get buildUserInfoCard => PreferredSize(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: calculateDynamicHeight(4),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildUserAvatar,
              buildUserNameText,
              buildUserEmailText,
            ],
          ),
        ),
        preferredSize: Size(
          calculateDynamicWidth(20),
          calculateDynamicHeight(20),
        ),
      );

  Widget get buildUserAvatar {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.onSurface),
        borderRadius: BorderRadius.circular(calculateDynamicWidth(11)),
      ),
      child: CircleAvatar(
        backgroundImage: NetworkImage(
          "https://static.generated.photos/vue-static/face-generator/landing/wall/20.jpg",
        ),
        radius: calculateDynamicWidth(11),
      ),
    );
  }

  get buildUserNameText => Text(
        viewModel.userProvider.loginedUser!.name!,
        style: context.textTheme.headline6?.copyWith(
          fontWeight: FontWeight.bold,
          color: context.colors.onSurface,
        ),
      );

  get buildUserEmailText => Text(
        viewModel.userProvider.loginedUser!.email!,
        style: context.textTheme.bodyText1?.copyWith(
          color: context.colors.onSurface,
          fontWeight: FontWeight.w700,
        ),
      );
}

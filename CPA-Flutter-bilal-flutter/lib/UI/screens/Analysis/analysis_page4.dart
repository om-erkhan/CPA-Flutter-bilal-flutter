import 'package:cpa/UI/Widgets/progress_bar.dart';
import 'package:cpa/data/dummy.dart';
import 'package:cpa/export.dart';

class AnalysisScreen4 extends StatelessWidget {
  AnalysisScreen4({super.key});

  final TextEditingController _controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(CPAAssets.CpaLogo),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'One More...',
                  style: CPATextTheme().heading3.copyWith(
                        fontSize: 25,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: 1,
                      ),
                ),
              ),
              SizedBoxes.verticalMicro,
              Align(
                alignment: Alignment.topLeft,
                child: ProgressBar(
                  value: 0.8,
                  backgroundColor: CPAColorTheme().white,
                  fillColor: CPAColorTheme().primaryblue,
                ),
              ),
              SizedBoxes.verticalBig,
              Text(
                'Do you have a secondary location you may decide to relocate to in the event of a disaster or would you 100% stay in your primary location? If yes, ask if they would like to also run the CPA for their secondary location to assure its properly outfitted. Then ask for for address to which we will put in static map and directions between properties as well as mapping links in case they still have cell service.',
                style: CPATextTheme().body.copyWith(
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      height: 1,
                      letterSpacing: -0.21,
                    ),
              ),
              SizedBoxes.verticalBig,
              SimpleDropdown(
                onTap: (val) {
                  secondaryLocation = val;
                },
              ),
              SizedBoxes.verticalBig,
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'How much land for the secondary location?',
                  style: CPATextTheme().subtext.copyWith(
                        fontSize: 14,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        height: 0.13,
                      ),
                ),
              ),
              SizedBoxes.verticalBig,
              CustomTextField(
                controller: _controller1,
                hintText: 'example...',
              ),
              SizedBoxes.verticalBig,
              Text(
                'Would you like to consider designing a "safe room" within your current home or secondary location?',
                style: CPATextTheme().subtext.copyWith(
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
              ),
              SizedBoxes.verticalBig,
              SimpleDropdown(onTap: (val) {
                safeRoom = val;
              }),
              SizedBoxes.verticalBig,
              Text(
                'Do you have important personal effects/documents that you would want secured in case of an emergency or disaster?',
                style: CPATextTheme().small.copyWith(
                      fontSize: 14,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
              ),
              SizedBoxes.verticalBig,
              SimpleDropdown(
                onTap: (val) {
                  personalsDocuments = val;
                },
              ),
              SizedBoxes.verticalExtraGargangua,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 150,
                    height: 47,
                    child: CustomButton(
                        isActive: true,
                        isOutlined: true,
                        color: CPAColorTheme().primaryblue,
                        textColor: CPAColorTheme().primaryblue,
                        buttonText: 'Back',
                        onPressed: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AnalysisScreen3(),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    width: 150,
                    height: 47,
                    child: CustomButton(
                        textColor: CPAColorTheme().primaryblue,
                        buttonText: 'Next',
                        onPressed: () {
                          secLandSize = _controller1.text.toString();

                          print("_________________________");

                          print(secondaryLocation);
                          print(secLandSize);
                          print(safeRoom);
                          print(personalsDocuments);

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AnalysisScreen5(),
                            ),
                          );
                        }),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}

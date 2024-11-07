import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../controller/staff_toggle_provider.dart';
import 'constants/app_colors.dart';

class StaffToggleWidget extends StatelessWidget {
  const StaffToggleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<StaffToggleProvider>(
      builder: (context, provider, child) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 15.0,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.redAccent),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => provider.setStaffType("Academic Staff"),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Academic Staff",
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                        color: provider.selectedStaffType == "Academic Staff"
                            ? AppColors.redaccent
                            : Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (provider.selectedStaffType == "Academic Staff")
                      Container(
                        margin: const EdgeInsets.only(top: 4.0),
                        height: 4,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.orangeAccent,
                        ),
                      ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => provider.setStaffType("Non-Academic Staff"),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Non-Academic Staff",
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                        color:
                            provider.selectedStaffType == "Non-Academic Staff"
                                ? AppColors.redaccent
                                : Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (provider.selectedStaffType == "Non-Academic Staff")
                      Container(
                        margin: const EdgeInsets.only(top: 4.0),
                        height: 4,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.orangeAccent,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

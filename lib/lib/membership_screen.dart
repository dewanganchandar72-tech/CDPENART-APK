import 'package:flutter/material.dart';

class MembershipScreen extends StatelessWidget {
  const MembershipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F051D), // Dark purple background
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back or Skip button
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    // Skip action / Go to Home/Feed
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(color: Colors.white54, fontSize: 16),
                  ),
                ),
              ),
              const Spacer(),
              
              // Title & Subtitle
              const Text(
                "Unlock Full Access",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Join the CDPENART community and showcase your art without limits.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 32),

              // Membership Card with Neon Gradient Border / Accent
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A0B2E),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFFD946EF), // Neon Purple/Pink accent
                    width: 1.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFD946EF).withOpacity(0.2),
                      blurRadius: 15,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Monthly Pass",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.verified_rounded,
                          color: Color(0xFFD946EF),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          "₹50",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " / month",
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Divider(color: Colors.white24),
                    const SizedBox(height: 16),
                    // Features list
                    _buildFeatureItem("Unlimited art uploads"),
                    const SizedBox(height: 10),
                    _buildFeatureItem("Direct buyer chat access"),
                    const SizedBox(height: 10),
                    _buildFeatureItem("Priority community visibility"),
                  ],
                ),
              ),
              
              const Spacer(),

              // Subscribe Button
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleOptions ?? ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(const Color(0xFFD946EF)),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Handle payment / subscription logic
                  },
                  child: const Text(
                    "Subscribe for ₹50/mo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _buildFeatureItem(String text) {
    return Row(
      children: [
        const Icon(
          Icons.check_circle_outline,
          color: Color(0xFFD946EF),
          size: 20,
        ),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white87,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomegranet/application/core/consts/icon_assets.dart';
import 'package:pomegranet/application/features/restaurant/domain/entities/review.dart';
import 'package:pomegranet/application/features/restaurant/presentation/pages/widgets/review_rate_item.dart';

class ReviewsTab extends StatelessWidget {
  const ReviewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            children: [
              Text(
                'Average rating',
                style: GoogleFonts.rubik(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF212B36),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  '4/5',
                  style: GoogleFonts.rubik(
                    textStyle: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFE3434),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: RatingBar.builder(
                  glow: false,
                  itemSize: 28,
                  unratedColor: const Color(0xFF919EAB).withOpacity(0.32),
                  initialRating: 4,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  ignoreGestures: true,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star_rate_rounded,
                    color: Color(0xFFFFC107),
                  ),
                  onRatingUpdate: (rating) {
                    //print(rating);
                  },
                ),
              ),
              Text(
                '(8.24kreviews)',
                style: GoogleFonts.rubik(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF637381),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              ReviewRateItem(
                star: 5,
                progress: 0.5,
                reviewsCount: 122222,
              ),
              ReviewRateItem(
                star: 4,
                progress: .8,
                reviewsCount: 213123,
              ),
              ReviewRateItem(
                star: 3,
                progress: .5,
                reviewsCount: 34343,
              ),
              ReviewRateItem(
                star: 2,
                progress: .5,
                reviewsCount: 123123,
              ),
              ReviewRateItem(
                star: 1,
                progress: .5,
                reviewsCount: 232323,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: const Color(0xFF22B4B4).withOpacity(0.48),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 8,
                children: [
                  Image.asset(
                    IconsAssets.edit,
                    color: const Color(0xFF22B4B4),
                    height: 16,
                  ),
                  Text(
                    'Write your review',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.publicSans(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF22B4B4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(
                color: const Color(0xFF919EAB).withOpacity(0.24),
              ),
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: const Color(0xFFF4F6F8),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add review',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.publicSans(
                    textStyle: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF212B36),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your review about this Product:',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.beVietnamPro(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF212B36),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    RatingBar.builder(
                      glow: false,
                      itemSize: 28,
                      unratedColor: const Color(0xFF919EAB).withOpacity(0.32),
                      initialRating: 3,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star_rate_rounded,
                        color: Color(0xFFFFC107),
                      ),
                      onRatingUpdate: (rating) {
                        //print(rating);
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: 'Review*',
                    hintStyle: GoogleFonts.publicSans(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF919EAB),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xFF919EAB).withOpacity(0.32),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xFF919EAB).withOpacity(0.32),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xFF919EAB).withOpacity(0.32),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'Name *',
                    hintStyle: GoogleFonts.publicSans(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF919EAB),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xFF919EAB).withOpacity(0.32),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xFF919EAB).withOpacity(0.32),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xFF919EAB).withOpacity(0.32),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: 'Email *',
                    hintStyle: GoogleFonts.publicSans(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF919EAB),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xFF919EAB).withOpacity(0.32),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xFF919EAB).withOpacity(0.32),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xFF919EAB).withOpacity(0.32),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 16,
                          ),
                          side: BorderSide(
                            color: const Color(0xFF919EAB).withOpacity(0.32),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Text(
                          'Cancel',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.publicSans(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF212B36),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.symmetric(
                                vertical: 6,
                                horizontal: 16,
                              ),
                            ),
                            backgroundColor: const MaterialStatePropertyAll(
                              Color(0xFF22B4B4),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            shadowColor:
                                MaterialStateProperty.all<Color>(Colors.red)),
                        child: Text(
                          'Post review',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.publicSans(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 600,
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: Review.mockData.length,
            itemBuilder: (BuildContext context, int index) {
              return ReviewItem(review: Review.mockData[index]);
            },
          ),
        ),
      ],
    );
  }
}

class ReviewItem extends StatelessWidget {
  const ReviewItem({
    super.key,
    required this.review,
  });
  final Review review;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(review.avatar),
            ),
            contentPadding: EdgeInsets.zero,
            title: Text(
              review.name,
              style: GoogleFonts.publicSans(
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF212B36),
                ),
              ),
            ),
            subtitle: Text(
              review.dateTime.toIso8601String(),
              style: GoogleFonts.publicSans(
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF637381),
                ),
              ),
            ),
          ),
          RatingBar.builder(
            glow: false,
            itemSize: 18,
            unratedColor: const Color(0xFF919EAB).withOpacity(0.32),
            initialRating: 4,
            minRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            ignoreGestures: true,
            itemBuilder: (context, _) => const Icon(
              Icons.star_rate_rounded,
              color: Color(0xFFFFC107),
            ),
            onRatingUpdate: (rating) {
              //print(rating);
            },
          ),
          Visibility(
            visible: review.isVerifiedPurchase,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 8,
                children: [
                  Image.asset(
                    IconsAssets.verified,
                    color: const Color(0xFF22B4B4),
                    height: 16,
                  ),
                  Text(
                    'Verified purchase',
                    style: GoogleFonts.publicSans(
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF22B4B4),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            review.content,
            style: GoogleFonts.publicSans(
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF212B36),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Was this review helpful to you?',
              style: GoogleFonts.publicSans(
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF212B36),
                ),
              ),
            ),
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 8,
            children: [
              Image.asset(
                review.isVerifiedPurchase
                    ? IconsAssets.thumbsUp
                    : IconsAssets.check,
                color: const Color(0xFF212B36),
                height: 16,
              ),
              Text(
                '${review.isVerifiedPurchase ? 'Thank' : 'Helpful'} (${review.like})',
                style: GoogleFonts.publicSans(
                  textStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF212B36),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

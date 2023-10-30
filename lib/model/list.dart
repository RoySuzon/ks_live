List textList = [
  'যদি তোমার কথা বলা কারোর পছন্দ না হয়, তাহলে চুপ থেকে তাকে খুশি করে দাও।',
  '🌸•••༐༐প্রিয়༐༐•••🌸\n☘💔❝যাকে༐༐অন্যের༐༐পাশে༐༐\n🌿༐༐🍁༐༐🦋༐༐\nদেখতে ༐༐কষ্ট༐༐❞🌺🦋 🌼❝হয়༐༐তাকে༐༐নিজের༐༐ পাশে༐༐ যত্ন༐༐কারে༐༐❞রাখতে ও🍂🦋┇┇┇\nজানতে হয়🌿🦋🍁┇┇┇\n┇┇┇┇┇🖤\n┇┇┇┇♥️\n┇┇┇💚\n┇┇💙\n┇💛\n💜.',
  'আমি হয়তো দুষ্টু,কিন্তু খারাপ না।',
  'দিন আমারও আসবে শুধু সময়ের অপেক্ষা।',
  'পড়াশুনা করে অনেক কিছু করতে হবে আমাকে। কিন্তু পড়াশুনাটাই তাে ভাল লাগে না!',
  'সবার সাথে তাল মিলিয়ে চলা আমার পক্ষে সম্ভব নয়। কারন আমি মানুষ তবলা নই।',
];

class ApiClass {
  final List imageLink;
  final String text;

  ApiClass({required this.imageLink, required this.text});

  static List abcd = [
    ApiClass(imageLink: [
      'assets/images/man1.jpeg',
    ], text: 'আমি হয়তো দুষ্টু,কিন্তু খারাপ না।'),
    ApiClass(
        imageLink: [
          'assets/images/slide1.jpeg',
          'assets/images/man1.jpeg',
          'assets/images/google.png'
        ],
        text:
            'যদি তোমার কথা বলা কারোর পছন্দ না হয়, তাহলে চুপ থেকে তাকে খুশি করে দাও।'),
    ApiClass(imageLink: [
      'assets/images/slide1.jpeg',
      'assets/images/man1.jpeg',
      'assets/images/google.png',
      'assets/images/man1.jpeg',
      'assets/images/slide1.jpeg',
    ], text: 'দিন আমারও আসবে শুধু সময়ের অপেক্ষা।'),
    ApiClass(
        imageLink: [
          'assets/images/slide1.jpeg',
          'assets/images/man1.jpeg',
          'assets/images/google.png',
          'assets/images/slide1.jpeg',
        ],
        text:
            'সবার সাথে তাল মিলিয়ে চলা আমার পক্ষে সম্ভব নয়। কারন আমি মানুষ তবলা নই।')
  ];
}

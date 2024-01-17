class SelfIntroductionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '自我介紹:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            '嗨，大家好！我是吳季珊，22 歲，就讀於四資工三甲。我的興趣非常廣泛，包括遊戲、健身，以及品嚐各種美食。',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            '性格內向但樂觀向上，喜歡嘗試新事物，特別是在美食方面。我經常花時間探索不同的餐廳，享受各種口味的美食。',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            '現在我是大三的學生，尋找著自己喜歡的事物，期待在學業和興趣中找到更多的樂趣。希望未來能夠發現自己的興趣並追求。',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class Genre < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '文学・評論' },
    { id: 2, name: 'ビジネス・経済' },
    { id: 3, name: '政治・社会' },
    { id: 4, name: '歴史・地理' },
    { id: 5, name: '芸能・エンタメ' },
    { id: 6, name: 'アート・建築・デザイン' },
    { id: 7, name: '思想・宗教' },
    { id: 8, name: '暮らし・健康・料理' },
    { id: 9, name: 'サイエンス・テクノロジー' },
    { id: 10, name: '趣味・娯楽' },
    { id: 11, name: 'スポーツ・アウトドア' },
    { id: 12, name: '音楽' },
    { id: 13, name: '旅行・紀行' },
    { id: 14, name: '絵本・児童書' },
    { id: 15, name: 'コミックス' },
    { id: 16, name: 'その他' }
  ]
end
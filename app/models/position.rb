class Psition < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '小学生' },
    { id: 2, name: '中学生' },
    { id: 3, name: '高校生' },
    { id: 4, name: '大学生' },
    { id: 5, name: '会社員' },
    { id: 6, name: '自由業' },
    { id: 7, name: 'フリーター' },
    { id: 8, name: 'その他' }
  ]
end
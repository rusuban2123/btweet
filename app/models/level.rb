class Level < ActiveHash::Base
  self.data = [
    { id: 1, name: '初心者' }, { id: 2, name: '中級者' }, { id: 3, name: '上級者' },
  ]
end
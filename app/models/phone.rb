class Phone < ApplicationRecord
  enum os_type:{ios: 0, android: 1, other: 2}
end

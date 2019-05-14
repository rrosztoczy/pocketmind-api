class ActivityMemory < ApplicationRecord
  belongs_to :activity
  belongs_to :memory
end

# Ultimately, I would like to easily, intuitively associate activities with
# Time periods and ultimatley other data
# I could see this being pulled from google calendar

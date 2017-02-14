module ApplicationHelper

  def random_pic
    pics = Dir.new(Rails.root.to_s + "/app/assets/images/spooks").to_a
    pics.delete('.')
    pics.delete('..')
    pics.sample
  end
end
def pick_a_face
  pics = Dir.new(Rails.root.to_s + "/app/assets/images/headshots").to_a
  pics.delete('.')
  pics.delete('..')
  pics.delete('.DS_Store')

  return pics
end

def search_filter(filter)
  unless (filter ='')
    @tales = Contribution.search(filter)
  end
end

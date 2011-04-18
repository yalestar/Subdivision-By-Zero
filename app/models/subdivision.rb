class Subdivision

  # named_scope :random, :order=>'RANDOM()', :limit=>1
  
  def initialize
    "#{self.first_part} #{self.second_part} #{self.third_part}" 
  end
  
  
  def first_part 
    
    ["Sundance","Sunset","Elk","Wolf","Glen","Marmot","Willow","Sandstone","Orchard","Aspen","Tamarac",
      "Park","Eagle","Meadow","Palomino","Grove","Raccoon","Fox","Bear",
      "Summit","Creek","Chardonnay","Homestead","Lake","Redstone","Ridge","Coyote",
      "Buffalo","Village","Falcon","Heritage", "Anthem", "Pine", "Royal Pine", "Garden"].sort_by{ rand }.slice(0)
  end
  
  def second_part
    ["Terrace","Village" "Estates","Preserve", "Woods","Promenade","Prairie","Ranch","Hollow","Run","Heights","Greens","Acres","Reserve"].sort_by{ rand }.slice(0)
  end
  
  def third_part
    ["at RidgeGate", "Estates", "at The Greens", "at Wolf Hollow", "at Fox Hollow", "at Pine Acres", "at SkyRidge"].sort_by{ rand }.slice(0)
  end
  
  def house_image
    "sd#{rand(8) + 1}.jpg"
      
  end
end

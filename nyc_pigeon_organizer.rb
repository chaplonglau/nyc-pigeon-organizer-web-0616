
require 'pry'
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |properties, dataset|
    dataset.each do |x, namearray|
      namearray.each do |name|
        if (pigeon_list.key?(name)==false)
            pigeon_list[name]= {:color => [],
                                 :gender => [],
                                 :lives => [] }
        end
        pigeon_list[name][properties]<<x.to_s
      end
    end
  end
  pigeon_list
end



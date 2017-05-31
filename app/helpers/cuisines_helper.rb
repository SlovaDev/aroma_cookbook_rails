module CuisinesHelper
	
	DAYS = [ 
	            'sunday', 'monday', 'tuesday', 'wednesday',
	            'thursday', 'friday', 'saturday'
                
            ]

  def days_of_week
    DAYS.each_with_index.map { |day, index| [ I18n.t("calendar.#{day}"), index + 1 ] }
  end
end
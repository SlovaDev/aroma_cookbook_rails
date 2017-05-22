class Calendar < Struct.new("Calendar", :view, :date, :callback)
	HEADER = ['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday','saturday']

	START_DAY = :sunday 

	delegate :content_tag, to: :view

	def table
		content_tag :table, class: "calendar table table-bordered table-striped" do
			header + week_row
		end
	end

	def header
		content_tag :tr do 
			HEADER.map { |day| content_tag :th, day}.join.html_safe
		end
	end

	def week_row
		content_tag :tr do 
			week.map { |day| day_cell(day) }.join.html_safe 
		end
	end

	def day_cell(day)
		content_tag :td, view.capture(day, &callback), class: day_classes(day)
	end

	def day_classes(day)
		classes = []
		classes << "today" if day == Date.today
	end

	def week
		first = date.beginning_of_week(START_DAY)
		last = date.end_of_week(START_DAY)
		(first..last).to_a
	end
end
require "prawn"

module PdfRenderer
	ActionController::Renderers.add :pdf do |filename, test|
		pdf = Prawn::Document.new
		pdf.text render_to_string(test)
		send_data(pdf.render, filename: "#{filename}.pdf", disposition: "attachment")
	end

end

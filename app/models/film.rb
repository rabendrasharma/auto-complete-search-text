class Film < ApplicationRecord
	extend Mobility
	searchkick word_start: [:title]
	translates :title
	default_scope { i18n }
end

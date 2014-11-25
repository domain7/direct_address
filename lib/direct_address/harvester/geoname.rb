class Geoname

	class InvalidModelError < StandardError; end

	def self.retrieve_to_db
		raise(InvalidModelError, 'Country and Region models must be generated before populating the database. Please make sure the gem is installed into a rails project then try running: script/generate direct_address') if !gem_integrated?
		countries = YAML.load_file(File.join(File.dirname(__FILE__), 'countries.yml'))
		for country in countries
			abbrev = country[0]
			name = country[1]
			c = Country.where(abbreviation: abbrev).first_or_create(name: name)
			regions = YAML.load_file(File.join(File.dirname(__FILE__), 'regions', "#{abbrev}.yml")) rescue []
			for region in regions
				# this stopped working - using the next line instead
				# r = c.regions.find_or_create_by_name(:name => region)
				Region.where(name: region, country_id: c.id).first_or_create
				puts "Created country / region: #{name} / #{region}"
			end
		end
	end

private

	def self.gem_integrated?
		begin
			Country.new(:name => 'test', :abbreviation => 't')
			Region.new(:name => 'test', :country_id => -1)
			true
		rescue
			false
		end
	end

end

class Chouette::Kml::AccessPointExporter
  include ERB::Util
  attr_accessor :access_points, :template

  def initialize(access_points)
    @access_points = access_points
    @template = File.open('app/views/api/kml/access_points/index.kml.erb' ){ |f| f.read }
  end

  def render()
    ERB.new(@template).result(binding)
  end

  def kml_name
    "access_points"
  end

  def file_extension
    ".kml"
  end

  def save(directory, name = nil)
    File.open(directory + "/" + (name || kml_name) + file_extension, "w+") do |f|
      f.write(render)
    end if access_points.present?
  end
end

class JourneyPatternsController < ChouetteController
  defaults :resource_class => Chouette::JourneyPattern

  respond_to :html
  respond_to :js, :only => [:new_vehicle_journey, :show]
  respond_to :kml, :only => :show

  belongs_to :referential do
    belongs_to :line, :parent_class => Chouette::Line do
      belongs_to :route, :parent_class => Chouette::Route
    end
  end

  alias_method :route, :parent
  alias_method :journey_pattern, :resource

  def index     
    index! do |format|
      format.html { redirect_to referential_line_route_path(@referential,@line,@route) }
    end
  end

  def create_resource(object)
    object.special_update
  end

  def show
    @map = JourneyPatternMap.new(journey_pattern).with_helpers(self)
    @stop_points = journey_pattern.stop_points.paginate(:page => params[:page])
    show!
  end

  def new_vehicle_journey
    @vehicle_journey = Chouette::VehicleJourney.new(:route_id => route.id)
    @vehicle_journey.update_journey_pattern(resource)
    render "vehicle_journeys/select_journey_pattern"
  end
  # overwrite inherited resources to use delete instead of destroy 
  # foreign keys will propagate deletion)
  def destroy_resource(object)
        object.delete
  end

end

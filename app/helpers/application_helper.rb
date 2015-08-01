module ApplicationHelper
  def omniauth_authorize_path(resource_name, provider)
    send "#{resource_name}_omniauth_authorize_path", provider
  end

  def acc_teams
    Team.where(:conference => "ACC").order(:division => "ASC").order(:name => "ASC")
  end

  def get_team(id)
    if id != ''
      Team.find(id).name
    else
      "Not Selected"
    end
  end
end

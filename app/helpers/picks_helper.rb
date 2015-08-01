module PicksHelper

  def big_ten_teams
    Team.where(:conference => "BIG10").order(:division => "ASC").order(:name => "ASC")
  end

  def acc_winner 
    winner = get_current_user_picks
    winner = winner.acc_champ
  end

  def big_ten_winner 
    winner = get_current_user_picks
    winner = winner.big_ten_champ
  end

  def get_current_user_picks
    Pick.where(:user_id => current_user.id).first
  end

end

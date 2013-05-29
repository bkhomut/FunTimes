class RenameCaseIdToEngagementId < ActiveRecord::Migration
  def up
  end

  def down
  end

  def change
  	rename_column :engagements, :case_id, :engagement_id
  end

end

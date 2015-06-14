class AddComplaintToSummary < ActiveRecord::Migration
  def change
    add_column :summaries, :complaint, :string
  end
end

class CreateJobsVariantsTable < ActiveRecord::Migration
  def up
    create_table :jobs_variants, :id => false do |t|
        t.references :job
        t.references :variant
    end
    add_index :jobs_variants, [:job_id, :variant_id]
    add_index :jobs_variants, :variant_id
  end

  def down
    drop_table jobs_variants
  end
end

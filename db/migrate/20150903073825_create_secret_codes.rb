class CreateSecretCodes < ActiveRecord::Migration
  def change
    create_table :secret_codes do |t|
      t.string :secret_code
      t.integer :user_id

      t.timestamps
    end
  end
end

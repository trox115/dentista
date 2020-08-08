class CreatePacientes < ActiveRecord::Migration[6.0]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :morada
      t.string :telefone
      t.string :nif
      t.string :cc
      t.string :pem
      t.string :obs

      t.timestamps
    end
  end
end

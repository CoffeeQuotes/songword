class Fixwordcolumname < ActiveRecord::Migration[5.1]
  def change
    rename_column :words, :type, :word_speech
  end
end

# Code Review plugin for Redmine
# Copyright (C) 2009-2017  Haruyuki Iida
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

class CreateCodeReviews < ActiveRecord::Migration[4.2]
  def self.up
    create_table :code_reviews do |t|

      t.column :project_id, :integer

      t.column :parent_id, :integer

      t.column :change_id, :integer

      t.column :created_at, :timestamp

      t.column :updated_at, :timestamp

      t.column :user_id, :integer

      t.column :comment, :text

      t.column :status, :integer

      t.column :line, :integer

    end
  end

  def self.down
    drop_table :code_reviews
  end
end

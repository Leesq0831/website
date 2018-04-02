class InitDb < ActiveRecord::Migration
  def change

  	create_table :accounts do |t|
    	t.string   :name,                              limit: 30
    	t.string   :mobile,                            limit: 20
    	t.string   :id_card,                           limit: 20
    	t.integer  :status,             default: 1
    	t.string   :remark
    	t.timestamps
    end

    create_table :categories do |t|
    	t.integer :account_id
    	t.string  :name,                                limit: 20
    	t.string  :summary,                             limit: 100
    	t.string  :icon,																limit: 100
    	t.string  :pic,                                 limit: 100
    	t.string  :status,              default: 1
    	t.integer :article_count,       default: 0
    	t.string  :remark
    	t.boolean :recommend,           default: false
    	t.timestamps
    end

    create_table :articles do |t|
    	t.integer :account_id
    	t.integer :category_id
    	t.string  :title,                               limit: 30
    	t.string  :summary,                             limit: 100
    	t.integer :status,               default: 1
    	t.text    :body
    	t.integer :readers
    	t.integer :likes_count,          default: 0
    	t.integer :collections_count,    default: 0
    	t.timestamps
    end

    create_table :article_files do |t|
    	t.integer  :article_id
    	t.column 	 :name,      :tinyint, default: 1
    	t.string   :key,                                limit: 100
    	t.string   :name,                               limit: 100
    	t.timestamps
    end

  end
end

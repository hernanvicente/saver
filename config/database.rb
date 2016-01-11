Sequel::Model.plugin(:schema)
Sequel::Model.raise_on_save_failure = false # Do not throw exceptions on failure
Sequel::Model.db = case Padrino.env
  when :development then Sequel.connect("postgres://localhost/saver_development", :loggers => [logger])
  when :production  then Sequel.connect("postgres://localhost/saver_production",  :loggers => [logger])
  when :test        then Sequel.connect("postgres://localhost/saver_test",        :loggers => [logger])
end

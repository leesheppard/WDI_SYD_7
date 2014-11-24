require "sinatra"
require "sinatra/reloader"
require "pg"

def run_sql(sql)
  con = PG.connect(dbname: 'fluffy_pm', host: 'localhost')
  res = con.exec(sql)
  con.close
  return res
end

get '/' do
  @tasks = run_sql("
  SELECT tasks.title, tasks.due_at, tasks.id,
  workers.first_name AS worker_first_name,
  workers.last_name AS worker_last_name
  FROM tasks
  LEFT OUTER JOIN workers
  ON tasks.worker_id = workers.id;
")

  erb :home
end

get '/tasks/new' do
  @workers = run_sql("SELECT id, first_name, last_name FROM workers;")

  erb :new_task
end

get '/tasks/:id/edit' do
  @task = run_sql("SELECT * FROM tasks WHERE id='#{params[:id]}';")[0]
  @workers = run_sql("SELECT id, first_name, last_name FROM workers;")

  erb :edit_task
end

put '/tasks/:id' do
  run_sql("UPDATE tasks SET
  title='#{params[:title]}',
  due_at='#{params[:due_at]}',
  worker_id='#{params[:worker_id]}',
  notes='#{params[:notes]}'
  WHERE id=#{params[:id]};")

  redirect '/'
end

post '/tasks' do
  run_sql("
  INSERT INTO tasks
  (title, due_at, worker_id, notes)
  VALUES
  ('#{params[:title]}', '#{params[:due_at]}', '#{params[:worker_id]}', '#{params[:notes]}');
")

  redirect '/'
end

delete '/tasks/:id' do
  run_sql("
DELETE FROM tasks WHERE id='#{params[:id]}';
")

  redirect '/'
end

get '/workers' do
  @workers = run_sql("SELECT * FROM workers;")

  erb :workers
end

get '/workers/new' do
  erb :new_worker
end

post '/workers' do
  run_sql("
  INSERT INTO workers
  (first_name, last_name)
  VALUES
  ('#{params[:first_name]}', '#{params[:last_name]}');
")

  redirect '/workers'
end

get '/workers/:id/edit' do
  @worker = run_sql("SELECT * FROM workers WHERE id=#{params[:id]};")[0]

  erb :edit_worker
end

delete '/workers/:id' do
  run_sql("
DELETE FROM workers WHERE id='#{params[:id]}';
")

  redirect '/workers'
end

put '/workers/:id' do
  run_sql("UPDATE workers SET
  first_name='#{params[:first_name]}',
  last_name='#{params[:last_name]}'
  WHERE id=#{params[:id]};")

  redirect '/workers'
end

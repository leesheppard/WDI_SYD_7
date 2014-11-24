require "pg"

con = PG.connect(dbname: 'fluffy_pm', host: 'localhost')

# Create the workers table
con.exec("
  CREATE TABLE workers
  (
    id SERIAL4 PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
  );
")

# Create the tasks table
con.exec("
  CREATE TABLE tasks
  (
    id SERIAL4 PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    due_at DATE DEFAULT NOW(),
    notes TEXT,
    worker_id INT4 REFERENCES workers(id)
  );
")

# Seed data
con.exec("
  INSERT INTO workers (first_name, last_name) VALUES ('Jack', 'Watson-Hamblin'),
                                                     ('Jane', 'Smith'),
                                                     ('Kathy', 'Li'),
                                                     ('John', 'Doe')
")
con.exec("
  INSERT INTO tasks (title, worker_id) VALUES ('Do the dishes', 1),
                                              ('Create a web app', 1)
")

con.close

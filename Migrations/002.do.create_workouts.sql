CREATE TABLE workouts
(
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE NOT NULL,
  exercise_name TEXT NOT NULL,
  workout_set INTEGER NOT NULL,
  workout_rep INTEGER NOT NULL,
  workout_weight INTEGER NOT NULL,
  notes TEXT,
  date_created TIMESTAMP DEFAULT now() NOT NULL

)
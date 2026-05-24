CREATE TABLE pumps (
    pump_id SERIAL PRIMARY KEY,
    well_id INT REFERENCES wells(well_id),
    type TEXT,
    install_date DATE,
    manufacturer TEXT,
    model TEXT
);

CREATE TABLE pump_sensors (
    sensor_id SERIAL PRIMARY KEY,
    pump_id INT REFERENCES pumps(pump_id),
    timestamp TIMESTAMP,
    temperature NUMERIC(6,2),
    vibration NUMERIC(6,2),
    current NUMERIC(8,2),
    rpm NUMERIC(8,2),
    pressure NUMERIC(8,2)
);

CREATE TABLE pump_failures (
    failure_id SERIAL PRIMARY KEY,
    pump_id INT REFERENCES pumps(pump_id),
    failure_date TIMESTAMP,
    failure_type TEXT,
    downtime_hours NUMERIC(6,2)
);

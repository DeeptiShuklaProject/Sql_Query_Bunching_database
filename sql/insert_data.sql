-- Insert Sample Data into Employee Table
INSERT INTO Employee (name, salary, dep_id, manager_id, hire_date, skills, address, project_id) VALUES
('John Doe', 60000, 1, NULL, '2022-01-15', 'Python, SQL', '123 Main St', 1),
('Jane Smith', 65000, 1, 1, '2021-03-22', 'Java, Project Management', '456 Elm St', 2);

-- Insert Sample Data into Department Table
INSERT INTO Department (dep_name, location) VALUES
('Engineering', 'Building A'),
('Sales', 'Building B');

-- Insert Sample Data into Project Table
INSERT INTO Project (project_name, start_date, budget) VALUES
('Project Alpha', '2023-01-01', 100000),
('Project Beta', '2023-02-01', 150000);

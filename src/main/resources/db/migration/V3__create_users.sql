CREATE TABLE IF NOT EXISTS users (
    id BIGSERIAL PRIMARY KEY,
    account_id BIGINT UNIQUE NOT NULL,
    position_id BIGINT,
    full_name VARCHAR(200) NOT NULL,
    personnel_number VARCHAR(20) UNIQUE NOT NULL,
    date_of_birth DATE NOT NULL,
    is_active BOOLEAN NOT NULL DEFAULT true,

    FOREIGN KEY (account_id) REFERENCES accounts (id) ON DELETE CASCADE,
    FOREIGN KEY (position_id) REFERENCES positions(id) ON DELETE SET NULL
    );
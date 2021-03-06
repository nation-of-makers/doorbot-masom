
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
ALTER TABLE accounts ADD COLUMN notifications_hipchat_enabled BOOLEAN DEFAULT FALSE;
ALTER TABLE accounts ADD COLUMN notifications_hipchat_token VARCHAR(255) NOT NULL DEFAULT '';

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
ALTER TABLE accounts DROP COLUMN notifications_hipchat_enabled;
ALTER TABLE accounts DROP COLUMN notifications_hipchat_token;


-- +migrate Up
CREATE TABLE test (
    id bigserial, 
    message text,
    PRIMARY KEY(id)
);
ALTER TABLE test ADD code integer;
insert into test (message) VALUES ('test data1');
insert into test (message) VALUES ('test data2'); 
insert into test (message) VALUES ('test data3');
insert into test (message) VALUES ('test data4');
update test SET code=1;

-- +migrate Down
drop table test;
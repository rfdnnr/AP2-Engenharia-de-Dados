alter table pc
	ADD CONSTRAINT model_fk FOREIGN KEY (model) REFERENCES product(model);
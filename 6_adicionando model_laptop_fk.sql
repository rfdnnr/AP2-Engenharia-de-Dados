alter table laptop
	ADD CONSTRAINT model_laptop_fk FOREIGN KEY (model) REFERENCES product(model);
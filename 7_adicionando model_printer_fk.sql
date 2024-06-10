alter table printer 
add constraint model_printer_fk foreign key (model) references product(model);
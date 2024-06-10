select 'Laptop' as type, model, speed from laptop
where laptop.speed<(select max(pc.speed) from pc)
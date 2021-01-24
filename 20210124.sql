/*DROP TABLE public."Func";

CREATE TABLE public."Func" (
	id int4 NOT NULL GENERATED ALWAYS AS IDENTITY,
	func_name varchar(50) NOT NULL,
	description varchar(200) NOT NULL,
	func_controller varchar(50) NOT NULL,
	func_action varchar(50) NOT NULL,	
	created_on timestamp(0) NULL,
	updated_on timestamp(0) NULL
);

CREATE TABLE public."Role_Func" (
	id int4 NOT NULL GENERATED ALWAYS AS IDENTITY,
	role_id int4 NOT NULL,
	func_id int4 NOT NULL,
	isview bool NOT NULL DEFAULT false,
	isedit bool NOT NULL DEFAULT false,
	isremove bool NOT NULL DEFAULT false,
	created_on timestamp(0) NULL,
	updated_on timestamp(0) NULL
);
*/


/*INSERT INTO public."Func"
(func_name, description, func_controller, func_action, created_on, updated_on)
VALUES('Gói vay & workfollow', 'Thêm mới và quản trị gói vay & workfollow', 'Administrator', 'LoanPackages', '2021-01-24 19:43:02', '2021-01-24 19:43:02');
INSERT INTO public."Func"
(func_name, description, func_controller, func_action, created_on, updated_on)
VALUES('Quản trị người dùng', 'Thêm mới và quản trị người dùng', 'Users', 'Index', '2021-01-24 19:43:02', '2021-01-24 19:43:02');
INSERT INTO public."Func"
(func_name, description, func_controller, func_action, created_on, updated_on)
VALUES('Phân quyền', 'Thêm mới vai trò và phân quyền', 'Users', 'Roles', '2021-01-24 19:43:02', '2021-01-24 19:43:02');
INSERT INTO public."Func"
(func_name, description, func_controller, func_action, created_on, updated_on)
VALUES('Thêm mới hồ sơ', 'Thêm mới đơn vay', 'Reception', 'Add', '2021-01-24 19:43:02', '2021-01-24 19:43:02');*/


/*CREATE TABLE public."Role_Func" (
	id int4 NOT NULL GENERATED ALWAYS AS IDENTITY,
	role_id int4 NOT NULL,
	func_id int4 NOT NULL,
	isview bool NOT NULL DEFAULT false,
	isedit bool NOT NULL DEFAULT false,
	isremove bool NOT NULL DEFAULT false,
	created_on timestamp(0) NULL,
	updated_on timestamp(0) NULL
);*/


select r.role_name, f.func_name, rf.isview, rf.isedit, rf.isremove from public."Role" r
join public."Role_Func" rf on r.id = rf.role_id
join public."Func" f on rf.func_id = f.id;

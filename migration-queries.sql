-- 2023-08-11
alter table `homework` drop `report`;

-- 2023-08-12
alter table `homework_submissions` drop `file`;

-- 2023-08-24
alter table `school_settings` add `calendar_type` enum('en', 'np') not null default 'np', add `date_format` varchar(20) not null default 'YYYY-mm-dd';
alter table `school_settings` drop `logo`;

-- 2023-08-25
create table `academic_calendars` (`id` bigint unsigned not null auto_increment primary key, `title` varchar(255) not null, `date` date not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate 'utf8mb4_unicode_ci';

-- 2023-09-07
alter table `exams` drop foreign key `exams_session_id_foreign`;
alter table `exams` drop `session_id`;
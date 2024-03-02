create table if not exists doc_type(
                                       id serial primary key,
                                       title_kg varchar(200) unique not null,
    title_ru varchar(200) unique not null,
    title_en varchar(200) unique not null,
    upload_limit int not null
    );
create table if not exists user_document(
                                            id serial primary key,
                                            doc_type_id int references doc_type(id),
    applicant_id int references applicant(id),
    doc_no varchar(50) not null ,
    doc_authority varchar(100),
    doc_issue_date date,
    document varchar(200) not null
    );
create table if not exists document_uploads (
                                                id serial primary key,
                                                user_doc_id int references user_document(id),
    doc_path varchar(200) not null,
    upload_date date
    );
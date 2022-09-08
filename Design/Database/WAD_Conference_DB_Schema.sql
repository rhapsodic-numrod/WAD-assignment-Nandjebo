CREATE TABLE "User"(
    "id" VARCHAR(255) NOT NULL,
    "title_id" INTEGER NOT NULL,
    "type_id" INTEGER NOT NULL,
    "firstName" VARCHAR(255) NOT NULL,
    "middleName" VARCHAR(255) NULL,
    "surname" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "password" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "User" ADD PRIMARY KEY("id");
CREATE TABLE "Title"(
    "id" INTEGER NOT NULL,
    "title" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Title" ADD PRIMARY KEY("id");
CREATE TABLE "AfilliatedOrganisation"(
    "id" INTEGER NOT NULL,
    "name" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "AfilliatedOrganisation" ADD PRIMARY KEY("id");
CREATE TABLE "User_AfilliatedOrganisation"(
    "user_id" INTEGER NOT NULL,
    "affiliateOrganisation_id" INTEGER NOT NULL
);
ALTER TABLE
    "User_AfilliatedOrganisation" ADD PRIMARY KEY("user_id");
CREATE TABLE "Type"(
    "id" INTEGER NOT NULL,
    "name" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Type" ADD PRIMARY KEY("id");
CREATE TABLE "Review"(
    "id" INTEGER NOT NULL,
    "date_reviewed" INTEGER NOT NULL,
    "review" INTEGER NOT NULL,
    "star_rating" DECIMAL(8, 2) NOT NULL
);
ALTER TABLE
    "Review" ADD PRIMARY KEY("id");
CREATE TABLE "User_Review"(
    "user_id" INTEGER NOT NULL,
    "review_id" INTEGER NOT NULL
);
CREATE TABLE "Paper"(
    "id" INTEGER NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "submission_date" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "status" BOOLEAN NOT NULL,
    "file_url" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "Paper" ADD PRIMARY KEY("id");
CREATE TABLE "User_Paper"(
    "user_id" INTEGER NOT NULL,
    "paper_id" INTEGER NOT NULL
);
CREATE TABLE "Paper_Review"(
    "paper_id" INTEGER NOT NULL,
    "review_id" INTEGER NOT NULL
);
CREATE TABLE "Conference"(
    "id" INTEGER NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "description" TEXT NOT NULL,
    "start_date" DATE NOT NULL,
    "end_date" DATE NOT NULL
);
ALTER TABLE
    "Conference" ADD PRIMARY KEY("id");
CREATE TABLE "Conference_User_Attendance"(
    "user_ id" INTEGER NOT NULL,
    "conference_id" INTEGER NOT NULL
);
CREATE TABLE "Event"(
    "id" INTEGER NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "description" TEXT NOT NULL,
    "date" TIMESTAMP(0) WITH
        TIME zone NOT NULL
);
ALTER TABLE
    "Event" ADD PRIMARY KEY("id");
CREATE TABLE "Conference_Event"(
    "event_id" INTEGER NOT NULL,
    "conference_id" INTEGER NOT NULL
);
CREATE TABLE "Article"(
    "id" INTEGER NOT NULL,
    "author_id" INTEGER NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "content" TEXT NOT NULL,
    "date_uploaded" TIMESTAMP(0) WITH
        TIME zone NOT NULL
);
ALTER TABLE
    "Article" ADD PRIMARY KEY("id");
ALTER TABLE
    "User" ADD CONSTRAINT "user_title_id_foreign" FOREIGN KEY("title_id") REFERENCES "Title"("id");
ALTER TABLE
    "User_AfilliatedOrganisation" ADD CONSTRAINT "user_afilliatedorganisation_affiliateorganisation_id_foreign" FOREIGN KEY("affiliateOrganisation_id") REFERENCES "AfilliatedOrganisation"("id");
ALTER TABLE
    "User" ADD CONSTRAINT "user_type_id_foreign" FOREIGN KEY("type_id") REFERENCES "Type"("id");
ALTER TABLE
    "User_Review" ADD CONSTRAINT "user_review_review_id_foreign" FOREIGN KEY("review_id") REFERENCES "Review"("id");
ALTER TABLE
    "User_Review" ADD CONSTRAINT "user_review_user_id_foreign" FOREIGN KEY("user_id") REFERENCES "User"("id");
ALTER TABLE
    "User_Paper" ADD CONSTRAINT "user_paper_paper_id_foreign" FOREIGN KEY("paper_id") REFERENCES "Paper"("id");
ALTER TABLE
    "User_Paper" ADD CONSTRAINT "user_paper_user_id_foreign" FOREIGN KEY("user_id") REFERENCES "User"("id");
ALTER TABLE
    "Paper_Review" ADD CONSTRAINT "paper_review_paper_id_foreign" FOREIGN KEY("paper_id") REFERENCES "Paper"("id");
ALTER TABLE
    "Paper_Review" ADD CONSTRAINT "paper_review_review_id_foreign" FOREIGN KEY("review_id") REFERENCES "Review"("id");
ALTER TABLE
    "Conference_User_Attendance" ADD CONSTRAINT "conference_user_attendance_user_ id_foreign" FOREIGN KEY("user_ id") REFERENCES "User"("id");
ALTER TABLE
    "Conference_User_Attendance" ADD CONSTRAINT "conference_user_attendance_conference_id_foreign" FOREIGN KEY("conference_id") REFERENCES "Conference"("id");
ALTER TABLE
    "Conference_Event" ADD CONSTRAINT "conference_event_conference_id_foreign" FOREIGN KEY("conference_id") REFERENCES "Conference"("id");
ALTER TABLE
    "Conference_Event" ADD CONSTRAINT "conference_event_event_id_foreign" FOREIGN KEY("event_id") REFERENCES "Event"("id");
ALTER TABLE
    "Article" ADD CONSTRAINT "article_author_id_foreign" FOREIGN KEY("author_id") REFERENCES "User"("id");
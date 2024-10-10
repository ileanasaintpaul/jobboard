DROP      TABLE IF EXISTS company,
advertisement,
`user`,
application_infos;

CREATE    TABLE company (
          id INT NOT NULL AUTO_INCREMENT,
          NAME VARCHAR(255) NOT NULL,
          number_of_advertisements INT DEFAULT 0,
          headquarter VARCHAR(255),
          industry VARCHAR(80),
          ceo VARCHAR(80),
          founded DATE,
          number_of_employees VARCHAR(80),
          site BLOB,
          PRIMARY KEY (id)
          );

CREATE    TABLE advertisement (
          id INT NOT NULL AUTO_INCREMENT,
          title VARCHAR(80) NOT NULL,
          company_id INT NOT NULL,
          description_text TEXT NOT NULL,
          location_text VARCHAR(80) NOT NULL,
          employment_contract VARCHAR(80),
          type_of_work_station VARCHAR(80),
          workload VARCHAR(80),
          industry VARCHAR(80),
          ad_date DATETIME DEFAULT(CURRENT_TIMESTAMP),
          wages VARCHAR(80),
          cv_is_required BOOLEAN NOT NULL,
          cover_letter_is_required BOOLEAN NOT NULL,
          PRIMARY KEY (id),
          FOREIGN KEY (company_id) REFERENCES company (id) ON DELETE CASCADE
          );

CREATE    TABLE `user` (
          email VARCHAR(255) NOT NULL,
          PASSWORD TEXT NOT NULL,
          dark_mode BOOLEAN NOT NULL,
          is_admin BOOLEAN NOT NULL,
          firstname VARCHAR(80),
          lastname VARCHAR(80),
          phone VARCHAR(255),
          location VARCHAR(255),
          cover_letter MEDIUMBLOB,
          cover_letter_title BLOB,
          cv MEDIUMBLOB,
          cv_title BLOB,
          languages JSON,
          links BLOB,
          PRIMARY KEY (email)
          );

CREATE    TABLE application_infos (
          user_id INT NOT NULL,
          advertisement_id INT NOT NULL,
          date_sent DATETIME DEFAULT(CURRENT_TIMESTAMP),
          message TEXT,
          FOREIGN KEY (user_id) REFERENCES `user`(id) ON DELETE CASCADE,
          FOREIGN KEY (advertisement_id) REFERENCES advertisement (id) ON DELETE CASCADE,
          PRIMARY KEY (user_id, advertisement_id)
          );

CREATE    TRIGGER update_nb_advertisements AFTER
INSERT    ON advertisement
FOR EACH ROW 
BEGIN
    UPDATE    company
    SET       number_of_advertisements = number_of_advertisements + 1
    WHERE id_company = NEW.id
END;

CREATE    TRIGGER update_nb_advertisements AFTER
DELETE    ON advertisement
FOR EACH ROW 
BEGIN
    UPDATE    company
    SET       number_of_advertisements = number_of_advertisements - 1
    WHERE id_company = NEW.id
END;
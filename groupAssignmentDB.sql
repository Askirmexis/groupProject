create database project;
-- drop database project;
use project;

create table user(
uid int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(30) not null,
password CHAR(68) not null,
fname varchar(20) not null,
lname VARCHAR(20) not null,
street VARCHARACTER(50),
streetNumber int,
city VARCHAR(30),
zip INT,
country VARCHAR(20), 
email VARCHAR(25) not null,
UNIQUE(username)
);



insert into user(username,password,fname,lname,street,streetnumber,zip,country,email)
values('admin','$2y$12$3bO7UbLMsdvrz.wg7AH8uOu88i1P1cBv1RF41VU9QGdLCTxA8NKbW','admin','admin','random Street',19,19010,'greece','admin@admin.com');


-- select * from user_role;
create table role(
rid int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
rname varchar(30)
);
insert into role(rname) values('ROLE_ADMIN');
insert into role(rname) values('ROLE_USER');
insert into role(rname) values('ROLE_MANAGER');

create table user_role(
uid int UNSIGNED not null,
rid int UNSIGNED not null,
PRIMARY KEY(uid,rid),
constraint userrolefk1 FOREIGN KEY (uid) REFERENCES user(uid),
constraint userrolefk2 FOREIGN KEY (rid) REFERENCES role(rid)
);

INSERT into user_role VALUES(1,1);
INSERT into user_role VALUES(1,2);


create table brand(
brandID INT UNSIGNED not NULL PRIMARY KEY AUTO_INCREMENT,
brands VARCHAR(30) not null
);
insert into brand(brands)
values
('adidas'),('viking'),('pegasus'),('amila');

create table gender(
genderID INT UNSIGNED not NULL PRIMARY KEY AUTO_INCREMENT,
genders VARCHAR(10) not null
);
insert into gender(genders)
values('male'),
('female'),
('unisex');

create table status(
statusID INT UNSIGNED not NULL PRIMARY KEY AUTO_INCREMENT,
stat VARCHAR(20)	
);
insert into status(stat)
values('in stock'),
('sold out'),
('on the way');

create table Sizes(
sizesID INT UNSIGNED not NULL PRIMARY KEY AUTO_INCREMENT,
sizes VARCHAR(20)
);
insert into sizes(sizes)
values
('S'),
('M'),
('L'),
('XL'),
('XXL');

create table Tags(
tagID INT UNSIGNED not NULL PRIMARY KEY AUTO_INCREMENT,
tagsname VARCHAR(40)
);
insert into tags(tagsname)
values
('treadmill'),('Elliptical'),('Bikes'),('Rowers'),('Benches'),('Weight-Bars'),('Kettlebell'),('Dumbbell'),('Multigyms and Cable Stations'),('Exercise Tools');

create table Categories(
categoryID INT UNSIGNED not NULL PRIMARY KEY AUTO_INCREMENT,
category VARCHAR(50) not null
);
insert into categories(category)
values
('Gym Equipment'),('Supplements'),('Sports Gear');


create table Product(
productID INT UNSIGNED not NULL PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) not null,
description VARCHAR(1000) not null,
price DECIMAL(10,2) UNSIGNED not null,
stock int UNSIGNED not null,
statusID int UNSIGNED not null,
sizeID int UNSIGNED DEFAULT null,
brandID int UNSIGNED not null,
genderID int UNSIGNED not null,
categoryID int UNSIGNED not null,
tagID int UNSIGNED not null,
thumbnail VARCHAR (100),
pic2 VARCHAR (100),
pic3 VARCHAR (100),
constraint status_fk FOREIGN KEY (statusID) REFERENCES status(statusID),
constraint size_fk FOREIGN KEY (sizeID) REFERENCES Sizes(sizesID),
constraint brands_fk FOREIGN KEY (brandID) REFERENCES brand(brandID),
constraint gender_fk FOREIGN KEY (genderID) REFERENCES gender(genderID),
constraint categories_fk FOREIGN KEY (categoryID) REFERENCES categories(categoryID),
constraint tags_fk FOREIGN KEY (tagID) references Tags(tagID)
);


insert into product(name,description,price,stock,statusID,sizeID,brandID,genderID,categoryID,tagID,thumbnail,pic2,pic3)
values
('Adidas® T‑19x (4.0 HP)','Ο διάδρομος της Adidas Τ-19x έρχεται με κορυφαίο κινητήρα 4.0HP και δεκαετούς εγγύησης, 
την τεχνολογία απορρόφησης κραδασμών NRG και φυσικά την Κονσόλα UltraX,
εξοπλισμένη με μία 10.1" TFT οθόνη, με σύνδεση Wi-Fi για ατελείωτες ώρες ευχάριστης προπόνησης!',2675,10,1,null,1,3,1,1,'https://i.imgur.com/XGpKv8Y.jpg','https://i.imgur.com/CwCYjdk.jpg','https://i.imgur.com/JYQBR6k.jpg'),
( 'Adidas® T‑19 3.5 HP','Ο νέος στιβαρός διάδρομος της ADIDAS έρχεται με ένα δυνατό μοτέρ 3.5 ίππων με εγγύηση 10 ετών! 
Με άνετες διαστάσεις τάπητα 51 x 140cm αλλά και μέγιστο βάρος χρήστη τα 150 κιλά θα ικανοποιήσουν όλες τις ανάγκες σας. 
Ο διάδρομος τρεξίματος ADIDAS T-19 συνδυάζει την ποιότητα με την ομορφιά έτσι ώστε να σε παρακινεί να τον χρησιμοποιείς όλο και περισσότερο.',
2165,20,1,null,1,3,1,1,'https://i.imgur.com/xQKcUuK.jpg','https://i.imgur.com/CwCYjdk.jpg','https://i.imgur.com/JYQBR6k.jpg'),
('Pegasus "Starlet" ΜT-141 2,0HP','Διάδρομος Γυμναστικής Pegasus "Starlet" ΜT-141 2,0HP. 
Ταχύτητα 1-14km/h, με μηχανική κλίση 3ων επιπέδων, 
ταπέτο 41x130cm και μέγιστο βάρος χρήστη 115kg.',
630,12,1,null,3,3,1,1,'https://i.imgur.com/qjMEGQK.jpg','https://i.imgur.com/qjMEGQK.jpg','https://i.imgur.com/qjMEGQK.jpg'),
('Pegasus "Swift" JX-651 2.0HP','Διάδρομος Γυμναστικής Pegasus® "Swift" 2.0HP. Με δυνατότητα πλήρους αναδίπλωσης και μηχανική κλίση 2 επιπέδων. 
O περιορισμένος χώρος δεν αποτελεί πλέον εμπόδιο στην άσκησή σας!',719,10,1,null,3,3,1,1,'https://i.imgur.com/cBOfzyC.jpg','https://i.imgur.com/A057yOt.jpg','https://i.imgur.com/cBOfzyC.jpg'),
('Pegasus® "Lunar" ΜT-241 2.0HP','Ο Διάδρομος Γυμναστικής Pegasus® "Lunar" ΜT-241 διαθέτει κινητήρα 2.0HP, ταχύτητα 1-14km/h, 
κλίση 12 επιπέδων ηλεκτρονικά ρυθμιζόμενη, τάπητα 41x130 εκατοστών και μέγιστο βάρος χρήστη 115 κιλών.',
735,5,1,null,3,3,1,1,'https://i.imgur.com/3lCV3rp.jpg','https://i.imgur.com/izKFZLS.jpg','https://i.imgur.com/hvfnQHH.jpg'),
( 'VIKING GV-4000 1.5HP','Ο GV-4000 είναι σίγουρα ο καλύτερος διάδρομος που μπορείτε να σχεδόν πλήρως προ-συναρμολογημένος στη συσκευασία του έτσι ώστε να μπορεί να αποσυσκευαστεί και να τεθεί εύκολα σε λειτουργία από οποιονδήποτε. Έχει μοτέρ 1,5 ίππων (συνεχές)' ,399.00,5,1,null,2,3,1,1,'https://i.imgur.com/E8caTxZ.jpg','https://i.imgur.com/PXCK7SZ.jpg','https://i.imgur.com/bhbXB23.jpg'),
( 'VIKING DK-07 2HP','O Viking DK-07 αποτελεί την πλέον συμφέρουσα επιλογή στην κατηγορία των 2 ίππων. Διαθέτει αντικραδασμικό δάπεδο 126 x 42cm, μοτέρ 2 ίππων και ηλεκτρική κλίση.' ,446.00,5,1,null,2,3,1,1,'https://i.imgur.com/EWVj1B3.jpg','https://i.imgur.com/E8caTxZ.jpg','https://i.imgur.com/bhbXB23.jpg'),
( 'Viking DK-05 2.0HP','Ο DK-05 - η ολοκαίνουργια προσθήκη στην οικογένεια της VIKING - είναι πραγματικά ένα στολίδι με την κορυφαία σχέση απόδοσης/τιμής στην αγορά.' ,418.00,5,1,null,2,3,1,1,'https://i.imgur.com/bhbXB23.jpg','https://i.imgur.com/bhbXB23.jpg','https://i.imgur.com/bhbXB23.jpg'),
( 'VIKING DK-4 1.75HP','O Viking DK-4 αποτελεί την πλέον συμφέρουσα επιλογή στη κατηγορία των 1.75 ίππων με άνετη – αντικραδασμική επιφάνεια βάδισης 126 Χ 42εκ.' ,370.00,5,1,null,2,3,1,1,'https://i.imgur.com/PXCK7SZ.jpg','https://i.imgur.com/bhbXB23.jpg','https://i.imgur.com/bhbXB23.jpg'),
( 'VIKING DK-07 2HP','O Viking DK-07 αποτελεί την πλέον συμφέρουσα επιλογή στην κατηγορία των 2 ίππων. Διαθέτει αντικραδασμικό δάπεδο 126 x 42cm, μοτέρ 2 ίππων και ηλεκτρική κλίση.' ,446.00,5,1,null,2,3,1,1,'https://i.imgur.com/UP9hPjx.jpg','https://i.imgur.com/bhbXB23.jpg','https://i.imgur.com/bhbXB23.jpg'),
( 'Viking Norma 2HP','Διάδρομος γυμναστικής Viking Norma με μηχανική κλίση 2 επιπέδων.' ,456.00,5,1,null,2,3,1,1,'https://i.imgur.com/fhGaOjE.jpg','https://i.imgur.com/bhbXB23.jpg','https://i.imgur.com/bhbXB23.jpg'),
( 'VIKING GV-4305i','Ο νέος διάδρομος GV-4305i αποτελεί νεότερη έκδοση του αξιόπιστου GV-4304 με την ενσωμάτωση της ηλεκτρικής κλίσης στις λειτουργίες του.
Είναι αναδιπλούμενος, διαθέτει ισχυρό μοτέρ 2 ίππων, ικανοποιητικό μέγεθος τάπητα 43 x 126, πολύ καλή αντι – κραδασμική προστασία και σύγχρονα ηλεκτρονικά με όλες τις απαραίτητες ενδείξεις για την σωστή παρακολούθηση της άσκησης. Διαθέτει θύρα usb και ενσωματωμένα ηχεία ώστε να ακούτε τα αγαπημένα σας τραγούδια κατά την άσκηση.' ,465.00,5,1,null,2,3,1,1,'https://i.imgur.com/ptMqMLl.jpg','https://i.imgur.com/ptMqMLl.jpg','https://i.imgur.com/ptMqMLl.jpg'),
( 'Viking GV-4602 2,5HP','Ο Viking GV-4602 είναι διάδρομος μεσαίας κατηγορίας με μοτέρ 2,5 ίππων. Καταλαμβάνει σχετικά μικρό χώρο, ενώ έχει όμορφη σχεδίαση και εξελιγμένο αντικραδασμικό σύστημα για μέγιστη προστασία των αρθρώσεων.
Με άνετη σε διαστάσεις επιφάνεια τάπητα, εξελιγμένα ηλεκτρονικά και προσιτή τιμή, σίγουρα αποτελεί μια πολύ αξιόλογη πρόταση στην κατηγορία του!' 
,570.00,5,1,null,2,3,1,1,'https://i.imgur.com/nHoL9en.jpg','https://i.imgur.com/nHoL9en.jpg','https://i.imgur.com/nHoL9en.jpg'),
( 'Viking GV-4300 2HP','Ο Viking GV-4300 είναι διάδρομος μεσαίας κατηγορίας με μοτέρ 2 ίππων συνεχούς απόδοσης. Καταλαμβάνει σχετικά μικρό χώρο και το χαμηλό προφίλ του με τις άνετες χειρολαβές διευκολύνουν τη χρήση από ηλικιωμένα άτομα. Ο εξελιγμένος ελεγκτής του μοτέρ (PWM) επιτρέπει ταχύτητα μέχρι 18 km/h. Με ικανοποιητική επιφάνεια τάπητα, ειδικό αντικραδασμικό δάπεδο, εξελιγμένα ηλεκτρονικά και προσιτή τιμή, σίγουρα αποτελεί μια πολύ αξιόλογη πρόταση στην κατηγορία του!',617.00,5,1,null,2,3,1,1,'https://i.imgur.com/bseztFz.jpg','https://i.imgur.com/bseztFz.jpg','https://i.imgur.com/bseztFz.jpg'),


-- elliptical
('Pegasus® "Smart" BC-31501','Ελλειπτικό Pegasus® "Smart" BC-31501 Μαγνητικό με αδράνεια τροχού 8 kg.',250,10,1,null,3,3,1,2,'https://i.imgur.com/MBzzlpw.jpg','https://i.imgur.com/VJNcbS5.jpg','https://i.imgur.com/MBzzlpw.jpg'),
('Pegasus® "Astra" BC81501','Το Ελλειπτικό Pegasus® "Astra" BC81501 είναι ένα εργονομικό αλλά αποτελεσματικό μηχάνημα με μαγνητικό σύστημα αντίστασης 8 επιπέδων και βάρος αδράνειας δίσκου 9 κιλών.'
,325,10,1,null,3,3,1,2,'https://i.imgur.com/gj6ioaH.jpg','https://i.imgur.com/ATBlYiV.jpg','https://i.imgur.com/MBzzlpw.jpg'),
('Pegasus® "LeMans" BC85201','Ελλειπτικό Pegasus® "LeMans" BC85201 - Με μήκος βήματος 38 εκατοστών και βάρος αδράνειας δίσκου 12 κιλών, προσφέρει συνολικά 8 επίπεδα αντίστασης μαγνητικά ρυθμιζόμενα και απεικονίζει κάθε στιγμή πολύτιμα δεδομένα άσκησης μέσω μίας εύχρηστης οθόνης LCD. 
Το μέγιστο βάρος χρήστη είναι 120 κιλά.',300,20,1,null,3,3,1,2,'https://i.imgur.com/Sad1rij.jpg','https://i.imgur.com/Sad1rij.jpg','https://i.imgur.com/Sad1rij.jpg'),
('VIKING GOLF','Ιδανικό για το σπίτι αφού καταλαμβάνει μικρό χώρο. Με δυνατότητα διπλής κατεύθυνσης κίνησης!',237.00,5,1,null,2,3,1,2,'https://i.imgur.com/xvx3cb5.jpg','https://i.imgur.com/xvx3cb5.jpg','https://i.imgur.com/xvx3cb5.jpg'),
('Viking 801B','Mαγνητικό ελλειπτικό με ομαλή και αθόρυβη λειτουργία.',266.00,5,1,null,2,3,1,2,'https://i.imgur.com/Mi0KsCv.jpg','https://i.imgur.com/Mi0KsCv.jpg','https://i.imgur.com/Mi0KsCv.jpg'),
('Viking Cardio Fitness T-582','Στιβαρό και άνετο πλαίσιο, που επιτρέπει την εργονομικά σωστή χρήση του, είτε ως ελλειπτικό είτε ως ποδήλατο.',284.00,5,1,null,2,3,1,2,'https://i.imgur.com/QcqN8Aj.jpg','https://i.imgur.com/QcqN8Aj.jpg','https://i.imgur.com/QcqN8Aj.jpg'),
('VIKING CHALLENGER CLIMBER','Ένας έξυπνος συνδυασμός Ελλειπτικού μηχανήματος και Climber, σχεδιασμένο ώστε να γυμνάζει τόσο το κάτω όσο και το άνω μέρος του σώματος και να σας κάνει να ιδρώνετε μέσα σε λίγα λεπτά!',290.00,5,1,null,2,3,1,2,'https://i.imgur.com/AwGWnqF.jpg','https://i.imgur.com/AwGWnqF.jpg','https://i.imgur.com/AwGWnqF.jpg'),
('VIKING SPORTY','Το Sporty είναι ένα ελλειπτικό με πρόσθια τοποθετημένο τον τροχό, πράγμα που ευνοεί μία πιο έντονη αθλητική κίνηση και μία αυξημένη καύση θερμίδων.',340.00,5,1,null,2,3,1,2,'https://i.imgur.com/dtz6C5F.jpg','https://i.imgur.com/AwGWnqF.jpg','https://i.imgur.com/AwGWnqF.jpg'),
('Viking IREB-1202','Ηλεκτρομαγνητικό εργομετρικό ποδήλατο με ιδιαίτερα ομαλή & αθόρυβη λειτουργία.',379.00,5,1,null,2,3,1,2,'https://i.imgur.com/ksk5CdF.jpg','https://i.imgur.com/AwGWnqF.jpg','https://i.imgur.com/AwGWnqF.jpg'),
('Viking HG-8022E','Ηλεκτρομαγνητικό εργομετρικό ποδήλατο με ιδιαίτερα ομαλή & αθόρυβη λειτουργία.',446.00,5,1,null,2,3,1,2,'https://i.imgur.com/QBrjUr8.jpg','https://i.imgur.com/AwGWnqF.jpg','https://i.imgur.com/AwGWnqF.jpg'),
('VIKING MERCURY','Το Viking Mercury είναι ένα σύγχρονο ελλειπτικό, εμπρόσθιου τροχού, που έχει σχεδιαστεί με έμφαση στην εργονομία και την προστασία των αρθρώσεων.',655.00,5,1,null,2,3,1,2,'https://i.imgur.com/QBrjUr8.jpg','https://i.imgur.com/AwGWnqF.jpg','https://i.imgur.com/AwGWnqF.jpg'),
('Viking MOD 1636','Ηλεκτρομαγνητικό ελλειπτικό μηχάνημα υψηλής ποιότητας και αντοχής της γνωστής εταιρίας VIKING. Κατασκευασμένο με εκτεταμένη χρήση αλουμινίου και ειδικό πατενταρισμένο σύστημα αύξησης του εύρους κίνησης (που παρέχει το μεγαλύτερο εύρος κίνησης στην αγορά στην κατηγορία των οικιακών ελλειπτικών) σε συνδιασμό με τη δυνατότητα ρυθμίδεων του μήκους, αποτελεί ιδανική και αξιόπιστη λύση για ασφαλή και αποδοτική άσκηση.',712.00,5,1,null,2,3,1,2,'https://i.imgur.com/JtSVMVx.jpg','https://i.imgur.com/AwGWnqF.jpg','https://i.imgur.com/AwGWnqF.jpg'),


-- bikes
('Pegasus® "Polo" BC31500','Pegasus® "Polo" BC31500 - Ποδήλατο μαγνητικής αντίστασης 8 επιπέδων, 
με ιδιαίτερα κομψό σχεδιασμό, ηλεκτρονική κονσόλα διαφόρων ενδείξεων και βάρος δίσκου 4 κιλών.',215,20,1,null,3,3,1,3,'https://i.imgur.com/lUy979E.jpg','https://i.imgur.com/VJNcbS5.jpg','https://i.imgur.com/lUy979E.jpg'),
(' Pegasus® "Riva" BC81500','Pegasus® "Riva" BC81500 - Ποδήλατο μαγνητικής αντίστασης 8 επιπέδων, με ιδιαίτερα κομψό σχεδιασμό, 
ηλεκτρονική κονσόλα διαφόρων ενδείξεων και βάρος δίσκου 5 κιλών.',
2000,1,1,null,3,3,1,3,'https://i.imgur.com/dPPQ31i.jpg','https://i.imgur.com/VJNcbS5.jpg','https://i.imgur.com/dPPQ31i.jpg'),
('Spin Bike VIKING V-1500','Άψογης αισθητικής και προσεγμένης κατασκευής ποδήλατο ταχύτητας με σύστημα μετάδοσης ιμάντα για αθόρυβη λειτουργία και ενισχυμένο σύστημα αμορτισέρ για τη μείωση των σκελετικών καταπονήσεων!
 Μέγιστο βάρος χρήστη 120 κιλά.',330,4,1,null,2,3,1,3,'https://i.imgur.com/tkixMeX.jpg','https://i.imgur.com/cBOfzyC.jpg','https://i.imgur.com/QUb6GC2.jpg'),
('Spin Bike V-5000 (VIKING)','To V-5000 της Viking Fitness είναι ένα ημι-επαγγελματικό Spin Bike, με υψηλότατη ποιότητα κατασκευής, που δίνει την αίσθηση ενός αγωνιστικού ποδήλατου δρόμου, 
επιτρέποντας μας να γυμναστούμε σε πραγματικά έντονους ρυθμούς, με ασφάλεια.',
540,100,1,null,2,3,1,3,'https://i.imgur.com/HWZRGd0.jpg','https://i.imgur.com/QUb6GC2.jpg','https://i.imgur.com/HWZRGd0.jpg'),
 ('Viking R-007 Pro Bike','Επαγγελματικό καθιστό ποδήλατο με εξαιρετικά στιβαρή κατασκευή και 32 επίπεδα αντίστασης!',1450,2,1,null,2,3,1,3,'https://i.imgur.com/5HobSpL.jpg','https://i.imgur.com/5HobSpL.jpg','https://i.imgur.com/5HobSpL.jpg');
 

insert into product(name,description,price,stock,statusID,sizeID,brandID,genderID,categoryID,tagID,thumbnail,pic2,pic3)
values('VIKING BR-04','Ημιεπαγγελματική κωπηλατική μηχανή (DORSAL) με μαξιλάρι στήριξης θώρακα για προστασία της μέσης.',242,10,1,null,2,3,1,4,'https://i.imgur.com/zSSRv0p.jpg','https://i.imgur.com/zSSRv0p.jpg','https://i.imgur.com/zSSRv0p.jpg'),
('Viking R-0901','Έξυπνος συνδυασμός αερόβιας άσκησης και μυϊκής ενδυνάμωσης στο μικρότερο δυνατό χώρο. Η μαγνητική κωπηλατική R-0901 της Viking καταλαμβάνει ελάχιστο χώρο, αφού αναδιπλώνεται με μια απλή κίνηση. Κορυφαία τεχνολογία και υψηλής ποιότητας κατασκευής σε προσιτή τιμή.'
,274,10,1,null,2,3,1,4,'https://i.imgur.com/qS5Fjss.jpg','https://i.imgur.com/qS5Fjss.jpg','https://i.imgur.com/qS5Fjss.jpg'),
('VIKING R-1601','Εξαιρετικής ποιότητας κωπηλατικό μηχάνημα που χάρις στο συνδυασμό μαγνητικής πέδησης και αντίσταση αέρα επιτυγχάνει ομαλή και προοδευτική κίνηση για εκγύμναση όλου του σώματος χωρίς τραυματισμούς αλλά και αυξημένη καύση θερμίδων.',
375,4,1,null,2,3,1,4,'https://i.imgur.com/qS5Fjss.jpg','https://i.imgur.com/qS5Fjss.jpg','https://i.imgur.com/qS5Fjss.jpg'),
('VIKING R-1801','Υψηλής ποιότητας κωπηλατική μηχανή με ιδιαίτερα στιβαρή κατασκευή και μεγάλο εύρος κίνησης για την αποτελεσματική εκγύμναση όλου του σώματος και τη δραστική βελτίωση της καρδιο-αναπνευστικής λειτουργίας.
H κωπηλατική R-1801 της Viking διαθέτει διπλό σύστημα πέδησης με φτερωτή αέρα και μαγνητικό δίσκο για ομαλή και προοδευτική αντίσταση στην κίνηση.',
540,4,1,null,2,3,1,4,'https://i.imgur.com/iYs5Wua.jpg','https://i.imgur.com/iYs5Wua.jpg','https://i.imgur.com/iYs5Wua.jpg'),
('VIKING R-17 Victory','Η κωπηλατική άσκηση είναι από τις πλέον ωφέλιμες για τον άνθρωπο καθώς ενεργοποιεί το σύνολο των μυών, βελτιώνει τη δύναμη του κορμού και την ορθοσωμία ενώ παράλληλα αυξάνει την  καρδιο – αναπνευστική ικανότητα και την καύση λίπους.
Ιδιαίτερα η κωπηλατική νερού  μας δίνει το πλεονέκτημα της φυσικής αίσθησης αλλά και την ομαλή και προοδευτική αντίσταση του νερού που γυμνάζει σωστά χωρίς να τραυματίζει.
Πραγματικά η αίσθηση της φυσικής ροής και ο ήχος του νερού μας «ταξιδεύουν» και μας προδιαθέτουν να γυμναστούμε!',740,10,1,null,2,3,1,4,'https://i.imgur.com/J2mG9jF.jpg','https://i.imgur.com/J2mG9jF.jpg','https://i.imgur.com/J2mG9jF.jpg'),
(' Pegasus® AW‑40502','Γυμνάζοντας με μία κωπηλατική ενεργοποιείται το άνω και το κάτω μέρος του σώματος στην ίδια έκταση. Με την μαγνητική αντίσταση 8 επιπέδων της κωπηλατικής, ενεργοποιούνται και αντίστοιχες μυϊκές ομάδες προσφέροντας μία κυκλική αλληλουχία ενεργοποίησης των μυών ολόκληρου του σώματος.',
300,10,1,null,3,3,1,4,'https://i.imgur.com/kcud0D0.jpg','https://i.imgur.com/kcud0D0.jpg','https://i.imgur.com/kcud0D0.jpg'),
('Amila 43252','Κωπηλατική με κίνηση 360% Amila 43252 με οριζόντιο δοκό αλουμινίου 120cm για ομαλή κίνηση.',174,6,1,null,4,3,1,4,'https://i.imgur.com/ztIs9Ph.jpg','https://i.imgur.com/ztIs9Ph.jpg','https://i.imgur.com/ztIs9Ph.jpg'),
('AMILA R100 43256','Kωπηλατική Mαγνητική Semi-Commercial AMILA R100',1080,20,1,null,4,3,1,4,'https://i.imgur.com/WCw9ewM.jpg','https://i.imgur.com/WCw9ewM.jpg','https://i.imgur.com/WCw9ewM.jpg'),
('R200 Amila 43257','Επαγγελματική κωπηλατική αερομαγνητική Amila R200 με 43 προγράμματα συμπεριλαμβανομένων Pacer, Interval, H.R.C. και Recovery.',1410,10,1,null,4,3,1,4,'https://i.imgur.com/WCw9ewM.jpg','https://i.imgur.com/WCw9ewM.jpg','https://i.imgur.com/WCw9ewM.jpg'),

 

-- benches
('VIKING SUB 12','Άνετος και λειτουργικός πάγκος κοιλιακών με ρυθμιζόμενο ύψος και δυνατότητα αναδίπλωσης ώστε να καταλαμβάνει λιγότερο χώρο όταν δεν το χρησιμοποιούμε.',58,20,1,null,4,3,1,5,'https://i.imgur.com/lboh9Cq.jpg','https://i.imgur.com/XQhAXTX.jpg','https://i.imgur.com/XQhAXTX.jpg'),
('Viking BR-43','Αναδιπλούμενος πάγκος γυμναστικής με ορθοστάτες ρυθμιζόμενους καθ’ ύψος.',104,5,1,null,2,3,1,5,'https://i.imgur.com/XimKpNl.jpg','https://i.imgur.com/XimKpNl.jpg','https://i.imgur.com/XimKpNl.jpg'),
('Viking BR-83','Προσεγμένη κατασκευή, μας επιτρέπει να εκτελέσουμε πολλές ασκήσεις, ενώ όταν διπλώνει καταλαμβάνει ελάχιστο χώρο!',120,4,1,null,2,3,1,5,'https://i.imgur.com/ojf7FGR.jpg','https://i.imgur.com/ojf7FGR.jpg','https://i.imgur.com/ojf7FGR.jpg'),
('Viking IRSB-52','Βαριάς κατασκευής και άψογης λειτουργικότητας πάγκος γυμναστικής με πολλαπλές ρυθμίσεις.',193,9,1,null,2,3,1,5,'https://i.imgur.com/72qiuMn.jpg','https://i.imgur.com/72qiuMn.jpg','https://i.imgur.com/72qiuMn.jpg'),
('Amila 44751','Πάγκος κοιλιακών επαγγελματικών προδιαγραφών Amila 44751 με χοντρό μαξιλάρι και μέγιστο βάρος χρήστη 120kg.',70,2,1,null,4,3,1,5,'https://i.imgur.com/SxfcjXW.jpg','https://i.imgur.com/SxfcjXW.jpg','https://i.imgur.com/SxfcjXW.jpg'),
('Amila 44236','Πάγκος άρσης βαρών με ορθοστάτες Amila με ανατομικό σχήμα για τη σωστή στήριξη της πλάτης.',150,4,1,null,2,3,1,5,'https://i.imgur.com/3vDHlH1.jpg','https://i.imgur.com/3vDHlH1.jpg','https://i.imgur.com/3vDHlH1.jpg'),
('Amila 44753','Πάγκος άρσης βαρών Amila με ρυθμιζόμενους ορθοστάτες και πλάτη.',150,10,1,null,4,3,1,5,'https://i.imgur.com/qXoyqg9.jpg','https://i.imgur.com/qXoyqg9.jpg','https://i.imgur.com/qXoyqg9.jpg'),
('ADIDAS 10245 ','Η σειρά adidas περιλαμβάνει σχεδιαστικά χαρακτηριστικά, υλικά και τις προδιαγραφές των προϊόντων που θα έπρεπε κανονικά να περιμένατε να βρείτε μόνο σε ένα γυμναστήριο. Ο πάγκος βαρών και το σύστημα ορθοστατών παρέχει μια ισχυρή και λειτουργική πλατφόρμα ακόμη και για τους πιο απαιτητικούς χρήστες.'
,389,5,1,null,1,3,1,5,'https://i.imgur.com/eoW6Byc.jpg','https://i.imgur.com/eoW6Byc.jpg','https://i.imgur.com/eoW6Byc.jpg'),
(' ADIDAS Training Bench 10238','Η ιδανική προσθήκη για το γυμναστήριο του σπιτιού σας, ο πάγκος της Adidas προσφέρει ξεχωριστό σχεδιασμό και στιβαρή κατασκευή σε μία μικρή σε όγκο, αλλά συμπαγή συσκευή. Ιδιαίτερα εύκολος στην προσαρμογή, ο πάγκος διαθέτει επίσης ένα μαξιλάρι δικεφάλων για να εστιάσετε στους δικέφαλους μύες και λειτουργία εκτάσεων ποδιών για να εκτελέσετε εκτάσεις ποδιών και ασκήσεις κνημών, εστιάζοντας στους τετρακέφαλους και μηριαίους δικέφαλους αντίστοιχα.'
,312,8,1,null,1,3,1,5,'https://i.imgur.com/U4fZ8qC.jpg','https://i.imgur.com/U4fZ8qC.jpg','https://i.imgur.com/U4fZ8qC.jpg'),

 

-- bars
('Pegasus 7030','Στραβόμπαρα 6kg 28x1200mm (με βίδα) Pegasus',23,10,1,null,3,3,1,6,'https://i.imgur.com/F8m1yAi.jpg','https://i.imgur.com/F8m1yAi.jpg','https://i.imgur.com/F8m1yAi.jpg'),
('Pegasus 2266','Εκτελέστε ασκήσεις που καλύπτουν ένα σημαντικό αριθμό μυικών ομάδων, όπως δικέφαλους, τρικέφαλους, στήθος, πήχεις και βραχίωνες.',61,7,1,null,3,3,1,6,'https://i.imgur.com/MWgr613.jpg','https://i.imgur.com/MWgr613.jpg','https://i.imgur.com/MWgr613.jpg'),
('Pegasus 7020B','Μπάρα 8kg 28x1500mm (με βίδα) Pegasus',26,5,1,null,3,3,1,6,'https://i.imgur.com/aSRK0be.jpg','https://i.imgur.com/aSRK0be.jpg','https://i.imgur.com/aSRK0be.jpg'),
(' Amila 44424','Μπάρα Pump Set 1300 x 30mm κούφια με αφρώδη χειρολαβή και κολάρα μανταλάκια',95,8,1,null,4,3,1,6,'https://i.imgur.com/IJxzzod.jpg','https://i.imgur.com/IJxzzod.jpg','https://i.imgur.com/IJxzzod.jpg'),

 


-- kettlebell
('Kettlebell με λαστιχένια βάση χαλύβδινα','Kettlebell με λαστιχένια βάση. Είναι ένα χαλύβδινο βάρος (που μοιάζει με μια μπάλα κανονιού με χερούλι) χρησιμοποιείται για την εκτέλεση βαλλιστικών ασκήσεων που συνδυάζουν καρδιαγγειακές, δυναμικές και ευέλικτες προπονήσεις. Επίσης, είναι ο κύριος εξοπλισμός που χρησιμοποιείται στο άθλημα της άρσης βαρών.'
,2.60,10,1,null,3,3,1,7,'https://i.imgur.com/cgrCjVh.jpg','https://i.imgur.com/cgrCjVh.jpg','https://i.imgur.com/cgrCjVh.jpg'),
('Kettlebell Βινυλίου με λαστιχένια βάση','Kettlebell με λαστιχένια βάση και επένδυση από βινύλιο για μέγιστη προστασία του πατώματος.',3,5,1,null,3,3,1,7,'https://i.imgur.com/BuolAyC.jpg','https://i.imgur.com/BuolAyC.jpg','https://i.imgur.com/BuolAyC.jpg'),
('Kettlebell με επένδυση βινυλίου 4-20kg','Kettlebell με επένδυση βινυλίου. Ιδανική προπόνηση για απώλεια βάρους και υψηλό επίπεδο φυσικής κατάστασης, καθώς και για αύξηση της δύναμης και της αντοχής. Διατίθεται σε: 4-8-12-16-20 kg και με ποικιλία χρωμάτων.'
,3.30,5,1,null,4,3,1,7,'https://i.imgur.com/0Bl3Ak7.jpg','https://i.imgur.com/0Bl3Ak7.jpg','https://i.imgur.com/0Bl3Ak7.jpg'),
('Kettlebell με επένδυση λάστιχου και λαβή χρωμίου','Kettlebell με επένδυση από μαύρο φυσικό λάστιχο για απόλυτη προστασία και χρωμιομένο απόλυτα λείο χερούλι από ανθεκτικό ατσάλι.',
4.40,10,1,null,4,3,1,7,'https://i.imgur.com/tyuFRzq.jpg','https://i.imgur.com/tyuFRzq.jpg','https://i.imgur.com/tyuFRzq.jpg'),
('Kettlebell Αγωνιστικό Amila ','Τα Aγωνιστικά Kettlebell είναι στο ίδιο µέγεθος ανεξαρτήτως βάρους. Είναι φτιαγµένα από χυτοσίδηρο (µαντέµι). Το εσωτερικό του είναι κενό και ο όγκος του κενού είναι διαφορετικός για κάθε ένα, ανάλογα με το βάρος του χρησιµοποιείται διαφορετικό υλικό.'
,4.40,8,1,null,4,3,1,7,'https://i.imgur.com/4CG7DYm.jpg','https://i.imgur.com/4CG7DYm.jpg','https://i.imgur.com/4CG7DYm.jpg'),
('Kettlebell Αγωνιστικό 8-40kg','Τα Aγωνιστικά Kettlebell είναι στο ίδιο µέγεθος ανεξαρτήτως βάρους. Είναι φτιαγµένα από χυτοσίδηρο (µαντέµι). Το εσωτερικό του είναι κενό και ο όγκος του κενού είναι διαφορετικός για κάθε ένα, ανάλογα με το βάρος του χρησιµοποιείται διαφορετικό υλικό.',3.50,5,1,null,4,3,1,7,'https://i.imgur.com/x7GBNa7.jpg','https://i.imgur.com/x7GBNa7.jpg','https://i.imgur.com/x7GBNa7.jpg');


insert into product(name,description,price,stock,statusID,sizeID,brandID,genderID,categoryID,tagID,thumbnail,pic2,pic3)
values('Βάρη χειρός βινυλίου Pegasus','Οι Pegasus αλτήρες βινυλίου προσφέρουν ένα παχύ, ανθεκτικό, εύκολο στον καθαρισμό κάλυμμα βινυλίου, ανατομική λαβή και χρωματική κωδικοποίηση για εύκολη αναγνώριση. Είναι ιδανικοί για χρήση στο σπίτι, για την ατομική φυσική θεραπεία και για γυμναστική aerobic.'
,2.80,2,1,null,3,3,1,8,'https://i.imgur.com/M0BmeyQ.jpg','https://i.imgur.com/gUxtffG.jpg','https://i.imgur.com/3QSMExz.jpg'),
('Pegasus','Οι Pegasus αλτήρες βινυλίου προσφέρουν ένα παχύ, ανθεκτικό, εύκολο στον καθαρισμό κάλυμμα βινυλίου, ανατομική λαβή και χρωματική κωδικοποίηση για εύκολη αναγνώριση. Είναι ιδανικοί για χρήση στο σπίτι, για την ατομική φυσική θεραπεία και για γυμναστική aerobic.'
,8.40,3,1,null,3,3,1,8,'https://i.imgur.com/aUPKcBm.jpg','https://i.imgur.com/PsNX9ka.jpg','https://i.imgur.com/3QSMExz.jpg'),
('Pegasus 5 kg','Οι Pegasus αλτήρες βινυλίου προσφέρουν ένα παχύ, ανθεκτικό, εύκολο στον καθαρισμό κάλυμμα βινυλίου, ανατομική λαβή και χρωματική κωδικοποίηση για εύκολη αναγνώριση. Είναι ιδανικοί για χρήση στο σπίτι, για την ατομική φυσική θεραπεία και για γυμναστική aerobic.'
,14,3,1,null,3,3,1,8,'https://i.imgur.com/KDDE3LT.jpg','https://i.imgur.com/VDuY7hB.jpg','https://i.imgur.com/VDuY7hB.jpg'),
 -- multigyms
 ('Crossover ADIDAS Sports Rig','Νέο στιβαρό και ρυθμιζόμενο διπλό crossover από την ADIDAS. Διαθέτει επίσης μονόζυγο, καθώς και 3 προσαρτήματα(Μικρή ίσια μπάρα, 2 λαβές crossover, δέστρα αστραγάλου).'
 ,645,2,1,null,1,3,1,9,'https://i.imgur.com/XQ18zFq.jpg','https://i.imgur.com/ZSrHyrx.jpg','https://i.imgur.com/z9p7REc.jpg')
 ,('ADIDAS Home Rig 10500','Ο τέλειος οικιακός χώρος γυμναστικής είναι πλέον εύκολη υπόθεση χάρη στο Adidas Home Rig. Εργονομικό και εύκολο στη συναρμολόγηση, σας δίνει τη δυνατότητα να πάρετε το μέγιστο από το χώρο σας και αποτελεί ένα εργαλείο που προσφέρει τη δυνατότητα εκτέλεσης πολλαπλών ασκήσεων για μία συνολική σωματική εκγύμναση, ακόμα και για τους πλέον απαιτητικούς χρήστες.'
 ,749,2,1,null,1,3,1,9,'https://i.imgur.com/7CWhOuM.jpg','https://i.imgur.com/3SPKsX3.jpg','https://i.imgur.com/n4qWYtw.jpg')
 ,('Viking Bodypower','Εκτελεί ασκήσεις για όλες τις μυϊκές ομάδες, με σωστή ροή των τροχαλιών και προσομοιώνει την ελεύθερη κίνηση, ώστε οι μυς να ασκούνται σε όλο το εύρος τους, αρμονικά και χωρίς τραυματισμούς.'
 ,845,1,1,null,3,3,1,9,'https://i.imgur.com/Xbzr76v.jpg','https://i.imgur.com/fK2YEmm.jpg','https://i.imgur.com/beb2v5d.jpg'),
 ('VIKING LP-7','Εκτελεί ασκήσεις για όλες τις μυϊκές ομάδες, με σωστή ροή των τροχαλιών και προσομοιώνει την ελεύθερη κίνηση, ώστε οι μυς να ασκούνται σε όλο το εύρος τους, αρμονικά και χωρίς τραυματισμούς.'
 ,845,1,1,null,3,3,1,9,'https://i.imgur.com/Xbzr76v.jpg','https://i.imgur.com/fK2YEmm.jpg','https://i.imgur.com/beb2v5d.jpg');
 


create table shipmentinfo(
shipid int unsigned not null primary key auto_increment,
email VARCHAR(50) not null,
fname VARCHAR(20) not null,
lname VARCHAR(20) not null,
company VARCHAR(40),
address VARCHAR(50) not null,
city VARCHAR(30) not null,
country VARCHAR(30) not null,
zip int unsigned not null,
telephone int unsigned not null
);
-- drop table shipmentinfo;
-- drop table orders;
-- drop table orderdetails;

create table orders(
oid int unsigned not null primary key auto_increment,
shipmentid int unsigned not null,
totalprice decimal(7,2) unsigned not null,
date_time datetime not null default CURRENT_TIMESTAMP,
constraint ship FOREIGN KEY (shipmentid) REFERENCES shipmentinfo(shipid)

);

create table orderdetails(
detailid int unsigned not null primary key auto_increment,
orderid int unsigned not null,
productid int unsigned not null,
quantity int unsigned not null,
constraint orderkey FOREIGN KEY (orderid) REFERENCES orders(oid)
);
create table contact(
contactId int unsigned primary key AUTO_INCREMENT,
contact_email  VARCHAR(55) not null,
contact_name VARCHAR(40) not null,
contact_message VARCHAR(2500) not null
);

select * from user;
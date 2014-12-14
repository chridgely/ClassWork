
create table cadet (
	cdtName char(30),
	cdtStipend INT,
	cdtContractStatus BOOL,
	cdtMajor char(20),
	cdtGradYear DATETIME
	cdtMilHistory BOOL,
	cdtAPFT INT,
	cdtHeight INT,
	cdtWeight INT,
	cdtCWST BOOL,
	cdtClearance BOOL,
	cdtCAC BOOL,
	cdtTags BOOL,
	cdtAviation BOOL,
	cdtID INT,
	primary key (cdtID)
);

create table team (
	tmName char(10),
	tmID INT,
	cdtID INT,
	primary key (tmID),
	foreign key (cdtID) references cadet(cdtID)
);

create table squad (
	sqdNumber INT,
	sqdID INT,
	tmID INT,
	primary key (sqdID),
	foreign key (tmID) references team(tmID)
);

create table platoon (
	pltNumber INT,
	pltID INT,
	sqdID INT,
	primary key (pltID),
	foreign key (sqdID) references squad(sqdID)
);

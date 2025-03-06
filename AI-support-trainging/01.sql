show databases;

create database school;

use school;

drop table students;
-- creation of the students table
create table students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name varchar(300) not null,
    age int not null check (age > 0),
    major varchar(300) not null
);
-- checking of the tables
show tables;

select * from students;

insert into
    students (name, age, major)
values ('sivateja', 12, 'MPC');
-- insertion of the multiple rows
insert into
    students (name, age, major)
values ('hari', 11, 'Bipc'),
    ('krishna', 12, 'HEC');

insert into
    students (name, age, major)
values ('remo', 15, 'MPC');

-- creation of the books table

create table books (
    id int PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(300) NOT NULL,
    author VARCHAR(300) NOT NULL,
    year_of_publish VARCHAR(10) not null,
    topic VARCHAR(100) not null,
    description TEXT
);

-- inserting of the data books
insert into
    books (
        title,
        author,
        year,
        topic,
        description
    )
values (
        "The Satanic Verses",
        "Salman Rushdie",
        1988,
        "Religion, freedom of speech",
        "A controversial novel blending magical realism with themes of faith, identity, and migration. It sparked global protests and a fatwa for its depiction of Islam."
    ),
    (
        "1984",
        "George Orwell",
        1949,
        "Totalitarianism, surveillance, dystopia",
        "A chilling dystopian critique of authoritarianism, mass surveillance, and the erosion of truth under totalitarian regimes."
    ),
    (
        "Lolita",
        "Vladimir Nabokov",
        1955,
        "Taboo relationships, obsession",
        "A controversial exploration of obsession and power, told through the lens of a man’s fixation with a 12-year-old girl."
    ),
    (
        "The Catcher in the Rye",
        "J.D. Salinger",
        1951,
        "Adolescent rebellion, mental health",
        "A cult classic capturing teenage angst, alienation, and rebellion, often banned for its language and themes."
    ),
    (
        "Mein Kampf",
        "Adolf Hitler",
        1925,
        "Political ideology, fascism",
        "Hitler’s manifesto outlining his anti-Semitic ideology and vision for Germany, infamous for its divisiveness and ideological impact."
    ),
    (
        "Tropic of Cancer",
        "Henry Miller",
        1934,
        "Sexual liberation, autobiographical fiction",
        "A groundbreaking exploration of freedom and hedonism, banned in the U.S. for its explicit language and sexual content."
    ),
    (
        "The Bell Jar",
        "Sylvia Plath",
        1963,
        "Mental health, feminism",
        "A semi-autobiographical novel delving into depression, identity, and the struggles faced by women in a patriarchal society."
    ),
    (
        "Brave New World",
        "Aldous Huxley",
        1932,
        "Dystopia, genetic engineering",
        "A visionary critique of consumerism and over-reliance on technology, featuring a dystopia of genetic engineering and social control."
    ),
    (
        "The Color Purple",
        "Alice Walker",
        1982,
        "Racism, abuse, and womanhood",
        "A poignant narrative about the resilience of Black women, facing explicit themes of violence, racism, and empowerment."
    ),
    (
        "American Psycho",
        "Bret Easton Ellis",
        1991,
        "Materialism, psychopathy",
        "A darkly satirical and graphic critique of Wall Street's materialism and moral decay, notorious for its violence."
    ),
    (
        "The God Delusion",
        "Richard Dawkins",
        2006,
        "Religion, atheism",
        "A provocative critique of theism and organized religion, advocating for atheism and sparking worldwide debates."
    ),
    (
        "A Clockwork Orange",
        "Anthony Burgess",
        1962,
        "Free will, ultraviolence",
        "A disturbing exploration of violence, free will, and moral ambiguity, renowned for its linguistic innovation and controversial themes."
    ),
    (
        "On the Origin of Species",
        "Charles Darwin",
        1859,
        "Science, evolution",
        "The foundational text of evolutionary biology, introducing natural selection and radically transforming humanity’s understanding of life."
    ),
    (
        "Critique of Pure Reason",
        "Immanuel Kant",
        1781,
        "Philosophy, epistemology",
        "A groundbreaking examination of how humans perceive and understand the world, shaping the fields of metaphysics and epistemology."
    ),
    (
        "The Selfish Gene",
        "Richard Dawkins",
        1976,
        "Science, evolution",
        "A revolutionary work explaining evolutionary biology through the lens of gene-driven processes, introducing the concept of the 'meme.'"
    ),
    (
        "Beyond Good and Evil",
        "Friedrich Nietzsche",
        1886,
        "Philosophy, morality",
        "A provocative critique of traditional morality and religion, offering a profound rethinking of values, power, and human agency."
    ),
    (
        "The Structure of Scientific Revolutions",
        "Thomas S. Kuhn",
        1962,
        "Science, philosophy",
        "Introduced the concept of 'paradigm shifts,' profoundly influencing how science and scientific progress are perceived."
    ),
    (
        "Being and Time",
        "Martin Heidegger",
        1927,
        "Philosophy, existentialism",
        "A complex exploration of existence, time, and the nature of being, pivotal to existentialist and phenomenological thought."
    ),
    (
        "The Communist Manifesto",
        "Karl Marx and Friedrich Engels",
        1848,
        "Political theory, economics",
        "A revolutionary text advocating for class struggle and the abolition of capitalist systems, influencing global politics and ideologies."
    ),
    (
        "Untouchable",
        "Mulk Raj Anand",
        1935,
        "Caste system, inequality",
        "A pioneering novel that critiques India's caste system through the life of a sweeper boy, generating intense social debate."
    ),
    (
        "Why I Am an Atheist",
        "Bhagat Singh",
        1930,
        "Philosophy, religion",
        "A personal essay by Indian revolutionary Bhagat Singh questioning religious orthodoxy, exploring atheism, and discussing revolutionary ethics."
    ),
    (
        "Train to Pakistan",
        "Khushwant Singh",
        1956,
        "Partition, communalism",
        "A poignant and controversial exploration of the violence, displacement, and tragedy during India's Partition in 1947."
    ),
    (
        "Annihilation of Caste",
        "B.R. Ambedkar",
        1936,
        "Caste system, social reform",
        "A scathing critique of the Hindu caste system, calling for social reform and equality, and rejected even by reformists of its time."
    ),
    (
        "Midnight’s Children",
        "Salman Rushdie",
        1981,
        "Postcolonialism, Indian independence",
        "A Booker Prize-winning novel chronicling India's independence and partition through magical realism, celebrated yet controversial for its themes."
    );


	select * FROM books;
show databases;

create database school;

use school;

drop table students;
-- creation of the students table 
create table students(
student_id INT PRIMARY KEY AUTO_INCREMENT,
name varchar(300) not null,
age int not null check(age>0),
major varchar(300) not null	
);
-- checking of the tables
show tables;

select
	*
from
	students;

insert
	into
	students (name,
	age,
	major)
values ('sivateja',
12,
'MPC');
-- insertion of the multiple rows 
insert
	into
	students (name,
	age,
	major)
values ('hari',
11,
'Bipc'),
('krishna',
12,
'HEC');

insert
	into
	students (name,
	age,
	major)
values ('remo',
15,
'MPC');



-- creatign ooks table 
-- [
--   {
--     "title": "The Satanic Verses",
--     "author": "Salman Rushdie",
--     "year": 1988,
--     "topic": "Religion, freedom of speech",
--     "description": "A controversial novel blending magical realism with themes of faith, identity, and migration. It sparked global protests and a fatwa for its depiction of Islam."
--   },
--   {
--     "title": "1984",
--     "author": "George Orwell",
--     "year": 1949,
--     "topic": "Totalitarianism, surveillance, dystopia",
--     "description": "A chilling dystopian critique of authoritarianism, mass surveillance, and the erosion of truth under totalitarian regimes."
--   },
--   {
--     "title": "Lolita",
--     "author": "Vladimir Nabokov",
--     "year": 1955,
--     "topic": "Taboo relationships, obsession",
--     "description": "A controversial exploration of obsession and power, told through the lens of a man’s fixation with a 12-year-old girl."
--   },
--   {
--     "title": "The Catcher in the Rye",
--     "author": "J.D. Salinger",
--     "year": 1951,
--     "topic": "Adolescent rebellion, mental health",
--     "description": "A cult classic capturing teenage angst, alienation, and rebellion, often banned for its language and themes."
--   },
--   {
--     "title": "Mein Kampf",
--     "author": "Adolf Hitler",
--     "year": 1925,
--     "topic": "Political ideology, fascism",
--     "description": "Hitler’s manifesto outlining his anti-Semitic ideology and vision for Germany, infamous for its divisiveness and ideological impact."
--   },
--   {
--     "title": "Tropic of Cancer",
--     "author": "Henry Miller",
--     "year": 1934,
--     "topic": "Sexual liberation, autobiographical fiction",
--     "description": "A groundbreaking exploration of freedom and hedonism, banned in the U.S. for its explicit language and sexual content."
--   },
--   {
--     "title": "The Bell Jar",
--     "author": "Sylvia Plath",
--     "year": 1963,
--     "topic": "Mental health, feminism",
--     "description": "A semi-autobiographical novel delving into depression, identity, and the struggles faced by women in a patriarchal society."
--   },
--   {
--     "title": "Brave New World",
--     "author": "Aldous Huxley",
--     "year": 1932,
--     "topic": "Dystopia, genetic engineering",
--     "description": "A visionary critique of consumerism and over-reliance on technology, featuring a dystopia of genetic engineering and social control."
--   },
--   {
--     "title": "The Color Purple",
--     "author": "Alice Walker",
--     "year": 1982,
--     "topic": "Racism, abuse, and womanhood",
--     "description": "A poignant narrative about the resilience of Black women, facing explicit themes of violence, racism, and empowerment."
--   },
--   {
--     "title": "American Psycho",
--     "author": "Bret Easton Ellis",
--     "year": 1991,
--     "topic": "Materialism, psychopathy",
--     "description": "A darkly satirical and graphic critique of Wall Street's materialism and moral decay, notorious for its violence."
--   },
--   {
--     "title": "The God Delusion",
--     "author": "Richard Dawkins",
--     "year": 2006,
--     "topic": "Religion, atheism",
--     "description": "A provocative critique of theism and organized religion, advocating for atheism and sparking worldwide debates."
--   },
--   {
--     "title": "A Clockwork Orange",
--     "author": "Anthony Burgess",
--     "year": 1962,
--     "topic": "Free will, ultraviolence",
--     "description": "A disturbing exploration of violence, free will, and moral ambiguity, renowned for its linguistic innovation and controversial themes."
--   },
--   {
--     "title": "On the Origin of Species",
--     "author": "Charles Darwin",
--     "year": 1859,
--     "topic": "Science, evolution",
--     "description": "The foundational text of evolutionary biology, introducing natural selection and radically transforming humanity’s understanding of life."
--   },
--   {
--     "title": "Critique of Pure Reason",
--     "author": "Immanuel Kant",
--     "year": 1781,
--     "topic": "Philosophy, epistemology",
--     "description": "A groundbreaking examination of how humans perceive and understand the world, shaping the fields of metaphysics and epistemology."
--   },
--   {
--     "title": "The Selfish Gene",
--     "author": "Richard Dawkins",
--     "year": 1976,
--     "topic": "Science, evolution",
--     "description": "A revolutionary work explaining evolutionary biology through the lens of gene-driven processes, introducing the concept of the 'meme.'"
--   },
--   {
--     "title": "Beyond Good and Evil",
--     "author": "Friedrich Nietzsche",
--     "year": 1886,
--     "topic": "Philosophy, morality",
--     "description": "A provocative critique of traditional morality and religion, offering a profound rethinking of values, power, and human agency."
--   },
--   {
--     "title": "The Structure of Scientific Revolutions",
--     "author": "Thomas S. Kuhn",
--     "year": 1962,
--     "topic": "Science, philosophy",
--     "description": "Introduced the concept of 'paradigm shifts,' profoundly influencing how science and scientific progress are perceived."
--   },
--   {
--     "title": "Being and Time",
--     "author": "Martin Heidegger",
--     "year": 1927,
--     "topic": "Philosophy, existentialism",
--     "description": "A complex exploration of existence, time, and the nature of being, pivotal to existentialist and phenomenological thought."
--   },
--   {
--     "title": "The Communist Manifesto",
--     "author": "Karl Marx and Friedrich Engels",
--     "year": 1848,
--     "topic": "Political theory, economics",
--     "description": "A revolutionary text advocating for class struggle and the abolition of capitalist systems, influencing global politics and ideologies."
--   },
--   {
--     "title": "Untouchable",
--     "author": "Mulk Raj Anand",
--     "year": 1935,
--     "topic": "Caste system, inequality",
--     "description": "A pioneering novel that critiques India's caste system through the life of a sweeper boy, generating intense social debate."
--   },
--   {
--     "title": "Why I Am an Atheist",
--     "author": "Bhagat Singh",
--     "year": 1930,
--     "topic": "Philosophy, religion",
--     "description": "A personal essay by Indian revolutionary Bhagat Singh questioning religious orthodoxy, exploring atheism, and discussing revolutionary ethics."
--   },
--   {
--     "title": "Train to Pakistan",
--     "author": "Khushwant Singh",
--     "year": 1956,
--     "topic": "Partition, communalism",
--     "description": "A poignant and controversial exploration of the violence, displacement, and tragedy during India's Partition in 1947."
--   },
--   {
--     "title": "Annihilation of Caste",
--     "author": "B.R. Ambedkar",
--     "year": 1936,
--     "topic": "Caste system, social reform",
--     "description": "A scathing critique of the Hindu caste system, calling for social reform and equality, and rejected even by reformists of its time."
--   },
--   {
--     "title": "Midnight’s Children",
--     "author": "Salman Rushdie",
--     "year": 1981,
--     "topic": "Postcolonialism, Indian independence",
--     "description": "A Booker Prize-winning novel chronicling India's independence and partition through magical realism, celebrated yet controversial for its themes."
--   }
-- ]






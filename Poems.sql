--1
--select * from grade;
--1st, 2nd, 3rd, 4th, 5th

--2
--select * from emotion;
--Anger,Fear,Sadness,Joy

--3
--select count(id) from poem;
--32,842

--4
--select top 76
-- name  from author 
-- order by Author.name;

--5
--select top 76 
--author.name, 
--grade.name from author 
--	left join grade 
--on grade.id=author.gradeid 
--order by author.name

--6
--select top 76 
--author.name, gender.name,
--grade.name from author 
--	left join grade 
--on grade.id=author.gradeid 
--left join gender on gender.id= author.GenderId
--order by author.name

--7
--select sum(WordCount) from poem;
--374,584

--8

--select 
--	poem.title,
--	poem.CharCount
--from poem 
--where poem.CharCount
--in (select min(charcount) from poem)

--9

--select count
--	(author.name),
--	grade.name from author
--			left join grade 
--on grade.id=author.gradeid 
--where author.gradeid=3 
--group by grade.name 
--2,344

--10
--select count(author.name), grade.name  from author left join grade on grade.id=author.gradeid where author.gradeid <=3 group by grade.name
--1st=623
--2nd=1437
--3rd=2344

--11
--select count
--(poem.authorid) as Poems,
--grade.name from poem 
--	left join Author on author.id = poem.AuthorId
--	left join grade on author.GradeId=grade.id 
--	where grade.id=4 
--	group by grade.name

--10806

--12
--select count(poem.authorid) as poems, grade.name from poem
--left join author on author.id = poem.authorid
--left join grade on author.gradeid = grade.id
--where grade.id <=5
--group by grade.name

--13
--select count
--	(author.id),
--	grade.name from author
--		left join grade on grade.id=author.GradeId 
--group by grade.name

--14
--select 
--	poem.title,
--	poem.wordcount as wordCount
--from poem 
--where poem.WordCount in (select Max(wordcount) from poem)
--263

--15
--select count (poem.title) as numberofpoems, author.name from author left join poem on poem.authorid= author.id group by author.name order by 1 desc

--16
--select count(poem.id) as SadPoems from PoemEmotion
--	left join Poem  on PoemEmotion.PoemId = Poem.Id
--	left join Emotion on PoemEmotion.EmotionId = Emotion.Id
--where PoemEmotion.EmotionId = 3;
--14,570

--17
--select count(poem.title) as NoEmotionPoems from Poem
--left join PoemEmotion on PoemEmotion.PoemId = Poem.Id
--where PoemEmotion.EmotionId is null;
--3,368

--18
--select 
--	count(emotion.name) as NumberofPoems, 
--	Emotion.Name 
--	from Emotion
--	left join PoemEmotion on PoemEmotion.EmotionId = Emotion.id
--	group by emotion.name 
--	order by 1;
--Anger @ 11.105

--19

--select top 1 Count(poem.id) as JoyPoemCount, grade.name as Grade
--from Poem
--		left join PoemEmotion PoemEmotion on Poem.id = PoemEmotion.PoemId
--		left join Emotion on PoemEmotion.EmotionId = emotion.Id
--		left join author on poem.AuthorId = author.id
--		left join grade on author.GradeId = grade.Id
--group by emotion.name, emotion.id, grade.name
--having emotion.name IS NOT NULL and emotion.id=3
--order by count(poem.id) desc

--20
--select top 1 Count(poem.id) as JoyPoemCount, gender.name as Gender
--from Poem
--		left join PoemEmotion PoemEmotion on Poem.id = PoemEmotion.PoemId
--		left join Emotion on PoemEmotion.EmotionId = emotion.Id
--		left join author on poem.AuthorId = author.id
--		left join gender on author.GenderId = gender.Id
--group by emotion.name, emotion.id, gender.name
--having emotion.name IS NOT NULL and emotion.id=2
--order by count(poem.id) asc
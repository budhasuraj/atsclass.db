select b.Title, b.Price, a.Name as Author,p.Name as Publication, b.PublishedDate from Book as b
 JOIN Author as a on a.Id=b.AuthorId
 JOIN Publication as p on p.Id=b.PublicationId

 
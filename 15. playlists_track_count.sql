-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resultant table.

SELECT Playlist.Name AS 'Name of Playlist', COUNT(PlaylistTrack.TrackId) AS 'Number of Tracks'
FROM PlaylistTrack
JOIN Playlist
	ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
		GROUP BY Playlist.Name
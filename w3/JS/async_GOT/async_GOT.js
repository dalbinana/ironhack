var fs = require('fs');

function ratingStar(rating) {
	var stars = "";
	for (var i = 1; i < rating ; i++) {
		stars += "*";
	}
	return stars;
}

function resort(episodes) {
	return episodes.sort(function(a, b) {
		return a.episode_number - b.episode_number;
	});
}

function filtering(episodes) {
	var filtered = episodes.filter(function(episode){
		return episode.rating > 8.5;
	});
	return filtered;
}

function output(episode) {
	console.log("Title: " + episode.title);
	console.log(episode.description);
	console.log("Rating: " + episode.rating + " " + ratingStar(episode.rating));
	console.log(episode.episode_number + "\n");
}

function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    var sortedEpisodes = resort(episodes);
    var filteredEpisodes = filtering(sortedEpisodes);
    filteredEpisodes.forEach(function(episode){
    	output(episode);
    });
}

fs.readFile("./file.json", 'utf8', fileActions);

/*
 * GET home page.
 */

exports.index = function(req, res){
  res.render('index', { title: 'Learn about docker',
                        phrase: 'Node.JS Dockerized' });
};

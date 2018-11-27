$(function() {
	var canvas = document.getElementById("mouseCanvas");
	canvas.height = window.innerHeight;
	canvas.width = window.innerWidth;
	c = canvas.getContext('2d');
	c.fillStyle = "#3330";
	window.addEventListener('mousemove', function(event) {
		mouse.x = event.x;
		mouse.y = event.y;
		drawCircles();
	});
	window.addEventListener('click', function(event) {
		mouse.x = event.x;
		mouse.y = event.y;
		drawCircles();
	});
	window.addEventListener('resize', function() {
		canvas.height = window.innerHeight;
		canvas.width = window.innerWidth;
		initCanvas();
	});

	var mouse = {
		x : undefined,
		y : undefined
	};

	function images(x, y, radius, vx, vy, opacity, birth, life, rotateV,
			dirction, theSeason) {

		this.x = x;
		this.y = y;
		this.radius = radius;
		this.minRadius = radius;
		this.vx = vx;
		this.vy = vy;
		this.birth = birth;
		this.life = life;
		this.opacity = opacity;
		this.season = theSeason;
		this.dirction = dirction;

		this.draw = function() {
			// 旋转
			c.save();
			c.translate(this.x, this.y);
			c.rotate(rotateV * (frame - birth) * dirction);
			switch (this.season) {
			case "0":
				c.drawImage(springImg, -this.radius / 2, -this.radius / 2,
						this.radius, radius);
				break;
			case "1":
				c.drawImage(summerImg, -this.radius / 2, -this.radius / 2,
						this.radius, radius);
				break;
			case "2":
				c.drawImage(autumnImg, -this.radius / 2, -this.radius / 2,
						this.radius, radius);
				break;
			case "3":
				c.drawImage(winterImg, -this.radius / 2, -this.radius / 2,
						this.radius, radius);
				break;
			}
			c.restore();
		};

		this.update = function() {
			if (this.x + this.radius * 0.35 > innerWidth
					|| this.x - this.radius * 0.35 < 0) {
				this.vx = -this.vx;
			}

			if (this.y + this.radius * 0.35 > innerHeight
					|| this.y - this.radius * 0.35 < 0) {
				this.vy = -this.vy;
			}

			this.x += this.vx;
			this.y += this.vy;

			this.opacity = 1 - (frame - this.birth) * 1 / this.life;
			if (frame > this.birth + this.life) {
				for (var i = 0; i < circleArray.length; i++) {
					if (this.birth == circleArray[i].birth
							&& this.life == circleArray[i].life) {
						circleArray.splice(i, 1);
						break;
					}
				}
			} else {
				this.draw();
			}
		};

	}

	var circleArray = [];

	function initCanvas() {
		circleArray = [];
	}

	var colorArray = [ '355,85,80', '9,80,100', '343,81,45' ];

	function drawCircles() {
		for (var i = 0; i < 1; i++) {
			var radius = Math.floor(Math.random() * 30) + 25;
			var vx = (Math.random() * 2 - 1) * 2;// -1 - 1
			var vy = (Math.random() * 2 - 1) * 2;// -1 - 1
			var spawnFrame = frame;
			var life = 200;
			var rotateA = (Math.random() * 1.8 + 0.1) * Math.PI; // (0.2 -
			var rotateV = rotateA / life // 一帧旋转的角度
			var dirction = Math.random();
			var vd = Math.random();
			if ((dirction - vd) > 0) {
				dirction = 1;
			} else {
				dirction = -1;
			}
			var theSeason = season;
			console.log(season);
			circleArray.push(new images(mouse.x, mouse.y, radius, vx, vy, 1,
					spawnFrame, life, rotateV, dirction, theSeason));
		}
	}

	var frame = 0;
	function animate() {
		requestAnimationFrame(animate);
		frame += 1;
		c.clearRect(0, 0, innerWidth, innerHeight);
		for (var i = 0; i < circleArray.length; i++) {
			circleArray[i].update();
		}

	}

	initCanvas();
	animate();

});

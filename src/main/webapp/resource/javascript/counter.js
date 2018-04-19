$(document).ready(function () {
    var clock;
    clock = $('.counter').FlipClock({
        clockFace: 'Counter',
        autoStart: true,
        countdown: true,
        language: 'ru-ru',
        callbacks: {
            stop: function () {
                window.location.reload(true);
            }
        }
    });
    clock.setTime(11);
    clock.setCountdown(true);
    clock.start();
});
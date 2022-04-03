const date = new Date();
// console.log(date.getFullYear());
const lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0);
const reserveDate = document.querySelector('.reserve-date');
const theaterPlace = document.querySelectorAll('.theater-place');
const reserveTimeWant = document.querySelectorAll('.reserve-time-want');
const inputTitle = document.querySelector('.title');
const inputSelectedTheater = document.querySelector('.selectedTheater');
const inputReserveDate = document.querySelector('.reserveDate');
const inputRunningTime = document.querySelector('.runningTime');
const inputRoomNumber = document.querySelector('.roomNumber');
const inputId = document.querySelector('.id');
const moveSeatForm = document.querySelector('.moveSeatForm');
const moveSeatButton = document.querySelector('.moveSeatButton');
const movieAge = document.querySelector('.movieAge');
const movieDateWrapper = document.querySelectorAll('.movie-date-wrapper');

let movieListAge = '';
let year = 0;
let month = 0;
add();
document.addEventListener('DOMContentLoaded', () => {
    add();
    addDate();
//    addTitleClick();
});

// 데이터 가져오기
function add() {
    $.ajax({
        url: 'reserveMovieList.do',
        type: 'get',
        success: function(data) {
        
            
            setList(data);
            
            
            document.querySelectorAll('.movie-list-title').forEach(li => {
                li.addEventListener('click', function() {
                	
                    const movieListTitleActvie = document.querySelectorAll(
                        '.movie-list-title-active'
                    );
                    movieListTitleActvie.forEach(li => {
                        li.classList.remove('movie-list-title-active');
                    });
                    li.parentNode.classList.add('movie-list-title-active');
                    
                    
                    console.log(li.innerHTML);
                    console.log(li.parentElement);
                    console.log(li.parentElement.childNodes[1].innerHTML);
                    //form에 넘기기 위한
                    
                    
                    inputTitle.value = li.innerHTML;
                });
            });
        },
        error: function() {
            document.querySelector('.movie-list-wrapper').innerHTML =
                '데이터가없습니다 새로고침해주세요';
        },
    });
}


function setData(data) {
    data = JSON.parse(data);

    return data;
}

function setList(data) {

    document.querySelector('.movie-list-wrapper').innerHTML = JSON.parse(data).reduce((html = '', item, index = 0) => {html += getMovieList(item);
        return html;}, ' ');
        
}

function getMovieList(item) {
    console.log(item);
    return `<div class="movie-list">
    <button class="movie-list-title">${item.movie_reserve_title}</button>
</div>`;
}


function addDate() {
    const weekOfDay = ['일', '월', '화', '수', '목', '금', '토'];
    year = date.getFullYear();
    month = date.getMonth()+1;
    reserveDate.innerHTML = '<div class="yearMonth">'+year+'-'+month+'</div>';
    for (i = date.getDate(); i <= lastDay.getDate(); i++) {
        const button = document.createElement('button');
        const spanWeekOfDay = document.createElement('span');
        const spanDay = document.createElement('span');

        //class넣기
        button.classList = 'movie-date-wrapper';
        spanWeekOfDay.classList = 'movie-week-of-day';
        spanDay.classList = 'movie-day';

        //weekOfDay[new Date(2020-03-날짜)]
        const dayOfWeek =
            weekOfDay[new Date(year + '-' + month + '-' + i).getDay()];
			console.log(weekOfDay[new Date(year + '-' + month + '-' + i).getDay()]);
			
        //요일 넣기
        if (dayOfWeek === '토') {
            spanWeekOfDay.classList.add('saturday');
            spanDay.classList.add('saturday');
        } else if (dayOfWeek === '일') {
            spanWeekOfDay.classList.add('sunday');
            spanDay.classList.add('sunday');
        }
        spanWeekOfDay.innerHTML = dayOfWeek;
        button.append(spanWeekOfDay);
        
        //날짜 넣기
        spanDay.innerHTML = i;
        button.append(spanDay);
        //button.append(i);

        reserveDate.append(button);
		button.id = i;
        dayClickEvent(button);
    }
}

function dayClickEvent(button) {
    button.addEventListener('click', function() {
    console.log(event.currentTarget.lastChild.textContent);
                    $.ajax({
			        url: 'reserveMovieDateList.do',
			        type: 'post',
			        data : {"movie_reserve_title" : document.querySelector('.movie-list-title-active').textContent,
			        		"movie_reserve_date" : document.querySelector('.yearMonth').textContent + '-' + event.currentTarget.lastChild.textContent
			        },
			        dataType : "text",
			        success: function(day) {
			        
					var cell = document.querySelector('.reserve-time-wrapper'); 
					while ( cell.hasChildNodes() ) 
					{ cell.removeChild( cell.firstChild ); 
					}

			        console.log(day);
			        var test = JSON.parse(day);
			        console.log(test);
			        
			        for(var item in test) {
			        var buttonTime = document.createElement('button');
			        buttonTime.className += 'reserve-time-button';
			        buttonTime.innerHTML = '<span class="reserve-time-want">('+ test[item].movie_reserve_theater + '관)' + test[item].movie_reserve_starttime +'</span>'+'<span id = "'+test[item].movie_reserve_id+'"></span>';
   					document.querySelector('.reserve-time-wrapper').append(buttonTime); 
   					buttonTime.id = test[item].movie_reserve_theater;
   					buttonTime.firstChild.id = test[item].movie_reserve_starttime;
   					buttonTime.firstChild.addEventListener('click', function(event) {
			        
			        var buttons = document.querySelectorAll('.reserve-time-want');
			        buttons.forEach(li => {
			        li.classList.remove('reserve-time-active');
			        });
			        
			        event.target.classList.add('reserve-time-active');
			        console.log(buttonTime.innerHTML);
			        inputRunningTime.value = event.target.id;
			        inputRoomNumber.value = event.target.parentNode.id;
			        inputId.value = event.target.parentNode.lastChild.id;

					});
                }

            },

        });
					   					
        const movieDateWrapperActive = document.querySelectorAll(
            '.movie-date-wrapper-active'
        );
        movieDateWrapperActive.forEach(list => {
            list.classList.remove('movie-date-wrapper-active');
        });
        button.classList.add('movie-date-wrapper-active');
        console.log(button.childNodes[1].innerHTML);
        inputReserveDate.value =
            year +
            '-' +
            month +
            '-' +
            button.childNodes[1].innerHTML;
            
        console.log(inputReserveDate.value);

});
}


theaterPlace.forEach(list => {
    list.addEventListener('click', function() {
        const theaterPlaceWrapper = document.querySelectorAll(
            '.theater-place-active'
        );
        theaterPlaceWrapper.forEach(li => {
            li.classList.remove('theater-place-active');
        });
        list.classList.add('theater-place-active');
        console.log(list.innerHTML);
        inputSelectedTheater.value = list.innerHTML;
    });
});


reserveTimeWant.forEach(list => {
    list.addEventListener('click', function() {
        const reserveTimeActive = document.querySelectorAll('.reserve-time-active');
        reserveTimeActive.forEach(li => {
            li.classList.remove('reserve-time-active');
        });
        list.classList.add('reserve-time-active');
        console.log(list.innerHTML);
        inputRunningTime.value = list.innerHTML;
    });
});


moveSeatButton.addEventListener('click', function() {
    if (!!inputTitle.value &&
        !!inputSelectedTheater.value &&
        !!inputReserveDate.value &&
        !!inputRunningTime.value
    ) {
        moveSeatForm.submit();
    } else {
        toastr.options = {
            positionClass: 'toast-top-full-width',
            progressBar: true,
            timeOut: 1000,
        };
        toastr.error(
            '<div style="color:white">모든 항목을 체크해 주세요</div>',
            '<div style="color:white">경고</div>', {
                timeOut: 3000,
            }
        );
    }
});

function clickMovie() {

}
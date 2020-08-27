;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname BFS) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define tree (list 53 (list 3252 (list 11 '() '()) (list 4 '() '()) ) (list 17 '() '())))

(define (root tree) (first tree))
(define (left tree) (first (rest tree)))
(define (right tree) (first (rest (rest tree))))


(define (countl tree limit) (if (empty? tree) 0
                                (if(= limit 0) 0
                                   (+ 1 (countl (left tree) (- limit 1)) (countl (right tree) (- limit 1)))
                                   )
                               
                                )
  )
(countl tree 1)


(define (level tree x) (if (empty? tree) 0
                           (if(= x (root tree))
                              1
                              (+ (level (left tree) x)
                                 (level (right tree) x)
                                        (if(> (+ (level (left tree) x) (level (right tree) x)) 0)
                                           1 0
                                      
                                                              )
                                        )
                              )
                              )
                           )
(level tree 11)
(level tree 3252)
(level tree 4)
(level tree 3)
(level tree 53)

(define (BFS tree x)
  (countl tree (level tree x)))
(BFS tree 11)

(BFS tree 53)
(BFS tree 5232)
(BFS tree 3252) 
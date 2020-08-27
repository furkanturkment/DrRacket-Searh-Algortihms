;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname DFS-g) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define tree (list 53 (list 3252 (list 11 '() '()) (list 4 '() '()) ) (list 17 '() '())))

(define (root tree) (first tree))
(define (left tree) (first (rest tree)))
(define (right tree) (first (rest (rest tree))))

(define (count tree)
  (if(empty? tree) 0 (+ (count (left tree)) (count (right tree)) 1))
  )

(define (DFS tree x) (if (empty? tree) 0
                         (if(> (DFS (left tree) x) 0)
                            (DFS (left tree) x)
                            (if(> (DFS (right tree) x) 0)
                               (DFS (right tree) x)
                               (if (= x (root tree)) (count tree) 0)
                               )



                            )
                         )
  )
(DFS tree 11)
(DFS tree 4)
(DFS tree 100)

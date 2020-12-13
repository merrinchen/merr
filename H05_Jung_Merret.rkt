;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname H05_Jung_Merret) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #t)))
; FOP-Hausübung H5
; Bitte denken Sie daran, die Datei vor der Abgabe entsprechend der Namenskonvention umzubenennen!
; Zuweisungen mittels set!, let, begin usw. sind in keiner Racket-Hausübung erlaubt.
; Ebenso darf dynamische Codeausführung, bspw. per eval, in keiner Racket-Hausübung verwendet werden.
; Funktionen höherer Ordnung sind in dieser Hausübung nicht erlaubt.

;
; Structs
;
(define-struct permutation (input output))
(define p1 (make-permutation(list 1 2 3) (list 2 3 1)))
(define p2 (make-permutation (list 1 2 3) (list 1 3 2)))
(permutation-input p1)

;
; H1
;

;; Type: 
;; Returns: 
(define (lst-without-first-occurrence-of lst element)
  (cond
  [(empty? lst) empty]
  [(= (first lst) element) (rest lst)]
  [else (cons (first lst)(lst-without-first-occurrence-of (rest lst) element))]
  ))
;; Tests:
(lst-without-first-occurrence-of (list 1 2 3) 2)



;; Type: 
;; Returns: 
(define (is-permutation? input output)

  (local
   ((define(länge liste)
      (cond
        [(empty? liste) 0]
        [else (+ 1 (länge (rest liste)))]
   )))

  (cond
    [(and (empty? input) (empty? output)) #t]
    [(not(=(länge input)(länge output))) #f]
    [else (is-permutation? (rest input) (lst-without-first-occurrence-of output (first input)))]
    )
  )
)
    
;; Tests:
(is-permutation? (list 1 2 3) (list 2 1 3))


;
; H2
;

;; Type: 
;; Returns: 
(define (all-permutations lst)
  empty)
;; Tests:



;
; H3
;

;; Type: 
;; Returns: 
(define (compose-permutations permutations)
  (cond
    [(empty? (rest permutations)) (first 
  empty)

(define (two-line-lookup permutation-input permutation-output i);vllt auch (first permutation-input)
    (cond
      [(empty? permutation-input) i]
      [(= i (first permutation-input)) (first permutation-output)]
      [else (two-line-lookup (rest permutation-input) (rest permutation-output) i)]))

(define (compose-two-permutations pr1-in pr1-out pr2-in pr2-out)
 ; (local
 ;  [(define lstb ())]
 ;  )
  (cond
    [(empty? pr1-in) (make-permutation (pr1-in) (lstb))]
    [(=  (cons
           (two-line-lookup
            (pr2-in) (pr2-out)
            (two-line-lookup
             (pr1-in) (pr1-out)
             (first(pr1-in)))
            )
           () )
     ]
    [else (compose-two-permutations (rest pr1-in) (rest pr1-out) (pr2-in) (pr2-out))])
)
;; Tests:
(two-line-lookup (permutation-input p1) (permutation-output p1) 1)
(compose-two-permutations pr1 pr2)



;
; H4
;

;; Type: 
;; Returns: 
(define (decompose-permutation-into-cycles input output)
  empty)
;; Tests:



;
; H5
;

;; Type: 
;; Returns: 
(define (two-line-to-cycle-notation input output)
  empty)
;; Tests:

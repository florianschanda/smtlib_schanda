(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.38647436382416433531261645839549601078033447265625p57 {+ 1740525800906756 57 (1.99812e+017)}
; 1.38647436382416433531261645839549601078033447265625p57 | == 1.38647436382416433531261645839549601078033447265625p57
; [HW: 1.38647436382416433531261645839549601078033447265625p57] 

; mpf : + 1740525800906756 57
; mpfd: + 1740525800906756 57 (1.99812e+017) class: Pos. norm. non-zero
; hwf : + 1740525800906756 57 (1.99812e+017) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000111000 #b0110001011101111111110111110000101011110000000000100)))
(assert (= r (fp #b0 #b10000111000 #b0110001011101111111110111110000101011110000000000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0520683316903696180588667630217969417572021484375p318 {- 234494919198552 318 (-5.61801e+095)}
; -1.0520683316903696180588667630217969417572021484375p318 | == 1.0520683316903696180588667630217969417572021484375p318
; [HW: 1.0520683316903696180588667630217969417572021484375p318] 

; mpf : + 234494919198552 318
; mpfd: + 234494919198552 318 (5.61801e+095) class: Pos. norm. non-zero
; hwf : + 234494919198552 318 (5.61801e+095) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100111101 #b0000110101010100010110011010010111000100011101011000)))
(assert (= r (fp #b0 #b10100111101 #b0000110101010100010110011010010111000100011101011000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

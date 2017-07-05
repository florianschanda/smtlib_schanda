(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.68902277490912666735312086530029773712158203125p777 {- 3103082712330528 777 (-1.34259e+234)}
; -1.68902277490912666735312086530029773712158203125p777 | == 1.68902277490912666735312086530029773712158203125p777
; [HW: 1.68902277490912666735312086530029773712158203125p777] 

; mpf : + 3103082712330528 777
; mpfd: + 3103082712330528 777 (1.34259e+234) class: Pos. norm. non-zero
; hwf : + 3103082712330528 777 (1.34259e+234) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100001000 #b1011000001100011110010111110110001101111000100100000)))
(assert (= r (fp #b0 #b11100001000 #b1011000001100011110010111110110001101111000100100000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

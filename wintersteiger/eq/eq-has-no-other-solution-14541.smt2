(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5196118883870533000646219079499132931232452392578125p-215 {+ 2340123906917213 -215 (2.88592e-065)}
; Y = -1.2595306870914517727300108163035474717617034912109375p-1 {- 1168822305676271 -1 (-0.629765)}
; 1.5196118883870533000646219079499132931232452392578125p-215 = -1.2595306870914517727300108163035474717617034912109375p-1 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100101000 #b1000010100000101010010001110001100111100001101011101)))
(assert (= y (fp #b1 #b01111111110 #b0100001001110000100110100110010101011101101111101111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

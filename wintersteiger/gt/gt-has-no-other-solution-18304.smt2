(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.57795552096016677978695952333509922027587890625p-522 {+ 2602880268832928 -522 (1.14931e-157)}
; Y = 1.469810550804574678096514617209322750568389892578125p13 {+ 2115838621538210 13 (12040.7)}
; 1.57795552096016677978695952333509922027587890625p-522 > 1.469810550804574678096514617209322750568389892578125p13 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111110101 #b1001001111110100111001001001110100010001000010100000)))
(assert (= y (fp #b0 #b10000001100 #b0111100001000101100000010001011100000101011110100010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

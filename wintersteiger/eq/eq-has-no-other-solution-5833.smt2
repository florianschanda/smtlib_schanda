(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.240952167481543799709697850630618631839752197265625p5 {+ 1085152091683994 5 (39.7105)}
; Y = -1.9276586355065432609734443758497945964336395263671875p432 {- 4177803085194291 432 (-2.1379e+130)}
; 1.240952167481543799709697850630618631839752197265625p5 = -1.9276586355065432609734443758497945964336395263671875p432 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000000100 #b0011110110101111000010101000111100111011110010011010)))
(assert (= y (fp #b1 #b10110101111 #b1110110101111011000010010100110101011010010000110011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

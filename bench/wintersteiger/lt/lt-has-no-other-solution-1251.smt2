(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3504125625532912291504317181534133851528167724609375p726 {- 1578117886140943 726 (-4.76698e+218)}
; Y = -1.6047345304193940673798124407767318189144134521484375p-137 {- 2723482205854855 -137 (-9.21072e-042)}
; -1.3504125625532912291504317181534133851528167724609375p726 < -1.6047345304193940673798124407767318189144134521484375p-137 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011010101 #b0101100110110100101000110100000001000110001000001111)))
(assert (= y (fp #b1 #b01101110110 #b1001101011001111111000011101011011101001110010000111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

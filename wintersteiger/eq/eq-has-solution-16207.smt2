(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.034276066393172044399761944077908992767333984375p290 {- 154365679836016 290 (-2.05748e+087)}
; Y = -1.2673487320139338319080479777767322957515716552734375p-415 {- 1204031649875927 -415 (-1.49778e-125)}
; -1.034276066393172044399761944077908992767333984375p290 = -1.2673487320139338319080479777767322957515716552734375p-415 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100100001 #b0000100011000110010100001111100000110001101101110000)))
(assert (= y (fp #b1 #b01001100000 #b0100010001110000111101110110110010100000011111010111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7886769858295361590450056610279716551303863525390625p-145 {- 3551885379497585 -145 (-4.01035e-044)}
; Y = 1.945114446967802113164225374930538237094879150390625p823 {+ 4256417071186666 823 (1.08801e+248)}
; -1.7886769858295361590450056610279716551303863525390625p-145 = 1.945114446967802113164225374930538237094879150390625p823 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101101110 #b1100100111100110101111000010010100111110111001110001)))
(assert (= y (fp #b0 #b11100110110 #b1111000111110011000001010011100010110100001011101010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

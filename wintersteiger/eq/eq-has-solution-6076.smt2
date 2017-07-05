(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1277038703955477583207311909063719213008880615234375p-405 {+ 575127103127159 -405 (1.36473e-122)}
; Y = -1.1240764408528953754995427516405470669269561767578125p949 {- 558790612790557 949 (-5.34887e+285)}
; 1.1277038703955477583207311909063719213008880615234375p-405 = -1.1240764408528953754995427516405470669269561767578125p949 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001101010 #b0010000010110001001100110110101011101011111001110111)))
(assert (= y (fp #b1 #b11110110100 #b0001111111000011011110010011111110101010110100011101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.897577533827260243270984574337489902973175048828125p216 {- 4042329846880578 216 (-1.99838e+065)}
; Y = -1.1614780715186150406026399650727398693561553955078125p562 {- 727232582719741 562 (-1.75335e+169)}
; -1.897577533827260243270984574337489902973175048828125p216 = -1.1614780715186150406026399650727398693561553955078125p562 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011010111 #b1110010111000111101001000010100101101001100101000010)))
(assert (= y (fp #b1 #b11000110001 #b0010100101010110101000000111110000110001100011111101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

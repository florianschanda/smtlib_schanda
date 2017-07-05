(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.034767632962183991907068048021756112575531005859375p-894 {+ 156579498853046 -894 (7.83478e-270)}
; Y = 1.24165669125247735138373172958381474018096923828125p1002 {+ 1088324984676244 1002 (5.32178e+301)}
; 1.034767632962183991907068048021756112575531005859375p-894 > 1.24165669125247735138373172958381474018096923828125p1002 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010000001 #b0000100011100110100010000001011010001000001010110110)))
(assert (= y (fp #b0 #b11111101001 #b0011110111011101001101101000000111001001111110010100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

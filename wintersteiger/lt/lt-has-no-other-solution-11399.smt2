(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.81290242419396196993375269812531769275665283203125p186 {- 3660987054688500 186 (-1.77809e+056)}
; Y = -1.062718852422697590753841723199002444744110107421875p930 {- 282460600399966 930 (-9.64527e+279)}
; -1.81290242419396196993375269812531769275665283203125p186 < -1.062718852422697590753841723199002444744110107421875p930 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010111001 #b1101000000011010010111111000111011000000100011110100)))
(assert (= y (fp #b1 #b11110100001 #b0001000000001110010101111011101111111111100001011110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

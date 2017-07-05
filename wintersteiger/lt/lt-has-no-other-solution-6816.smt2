(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6572895804674658837285505796899087727069854736328125p411 {- 2960169109667789 411 (-8.76449e+123)}
; Y = 1.369128620533380580326365816290490329265594482421875p305 {+ 1662407517885918 305 (8.92469e+091)}
; -1.6572895804674658837285505796899087727069854736328125p411 < 1.369128620533380580326365816290490329265594482421875p305 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110011010 #b1010100001000100001000010100010000011011111111001101)))
(assert (= y (fp #b0 #b10100110000 #b0101111001111111001101101001100100110101010111011110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7381985080236999063885150462738238275051116943359375p-231 {- 3324550525660991 -231 (-5.03698e-070)}
; Y = 1.3600621616515320422280410639359615743160247802734375p-1012 {+ 1621575817044055 -1012 (3.09887e-305)}
; -1.7381985080236999063885150462738238275051116943359375p-231 > 1.3600621616515320422280410639359615743160247802734375p-1012 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100011000 #b1011110011111010100100111101000111101010111100111111)))
(assert (= y (fp #b0 #b00000001011 #b0101110000101101000010001010100011010010000001010111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

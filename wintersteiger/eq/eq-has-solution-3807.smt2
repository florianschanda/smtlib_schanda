(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2844789251469064250699148033163510262966156005859375p70 {- 1281179181286367 70 (-1.51645e+021)}
; Y = -1.74675458138788197715030037215910851955413818359375p-1012 {- 3363083654475676 -1012 (-3.97994e-305)}
; -1.2844789251469064250699148033163510262966156005859375p70 = -1.74675458138788197715030037215910851955413818359375p-1012 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001000101 #b0100100011010011100111000101111111101000001111011111)))
(assert (= y (fp #b1 #b00000001011 #b1011111100101011010011101110100100110010111110011100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

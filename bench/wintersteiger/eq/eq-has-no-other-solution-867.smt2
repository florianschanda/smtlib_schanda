(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.833741680088948999838294184883125126361846923828125p356 {- 3754838719771842 356 (-2.69164e+107)}
; Y = -1.787505260151005526125800315639935433864593505859375p969 {- 3546608396168374 969 (-8.91894e+291)}
; -1.833741680088948999838294184883125126361846923828125p356 = -1.787505260151005526125800315639935433864593505859375p969 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101100011 #b1101010101110000000110000100000101001011010011000010)))
(assert (= y (fp #b1 #b11111001000 #b1100100110011001111100011101100111000110110010110110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

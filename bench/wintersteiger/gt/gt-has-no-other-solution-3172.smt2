(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.297941207105984151581878904835321009159088134765625p-273 {- 1341807909300826 -273 (-8.55197e-083)}
; Y = -1.770854787342466263311280272318981587886810302734375p-971 {- 3471621333032294 -971 (-8.87273e-293)}
; -1.297941207105984151581878904835321009159088134765625p-273 > -1.770854787342466263311280272318981587886810302734375p-971 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011101110 #b0100110001000101110111111111110010100110101001011010)))
(assert (= y (fp #b1 #b00000110100 #b1100010101010110101111010100010110011001110101100110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.84938359674468610904796150862239301204681396484375p261 {+ 3825283649793980 261 (6.85261e+078)}
; Y = 1.5879853944048372138553304466768167912960052490234375p-834 {+ 2648050803140919 -834 (1.38621e-251)}
; 1.84938359674468610904796150862239301204681396484375p261 > 1.5879853944048372138553304466768167912960052490234375p-834 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100000100 #b1101100101110001001101000001000111000110111110111100)))
(assert (= y (fp #b0 #b00010111101 #b1001011010000110001101011111011101111110100100110111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

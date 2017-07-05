(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1507422974359935441412972068064846098423004150390625p-964 {- 678882954561713 -964 (-7.3801e-291)}
; Y = 1.1360788388245304236789934293483383953571319580078125p661 {+ 612844607823165 661 (1.08702e+199)}
; -1.1507422974359935441412972068064846098423004150390625p-964 < 1.1360788388245304236789934293483383953571319580078125p661 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000111011 #b0010011010010111000011000001010110011100100010110001)))
(assert (= y (fp #b0 #b11010010100 #b0010001011010110000100000001001001101101110100111101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

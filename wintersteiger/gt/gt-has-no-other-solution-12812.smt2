(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2028120584048156427314779648440890014171600341796875p297 {- 913384310658171 297 (-3.06271e+089)}
; Y = 1.685000234339501634650559935835190117359161376953125p549 {+ 3084966800120082 549 (3.10504e+165)}
; -1.2028120584048156427314779648440890014171600341796875p297 > 1.685000234339501634650559935835190117359161376953125p549 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100101000 #b0011001111101011011111011011011000010101010001111011)))
(assert (= y (fp #b0 #b11000100100 #b1010111101011100001011001110010000111101100100010010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

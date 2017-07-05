(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8255456465548214328720177945797331631183624267578125p-607 {- 3717927066201629 -607 (-3.43705e-183)}
; Y = 1.33910028945886150353317134431563317775726318359375p37 {+ 1527171937248156 37 (1.84045e+011)}
; -1.8255456465548214328720177945797331631183624267578125p-607 = 1.33910028945886150353317134431563317775726318359375p37 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110100000 #b1101001101010110111101011010000101001110111000011101)))
(assert (= y (fp #b0 #b10000100100 #b0101011011001111010001101100110101001010001110011100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

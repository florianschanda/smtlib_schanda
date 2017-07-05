(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6422995619143894163727281920728273689746856689453125p-961 {+ 2892660067697877 -961 (8.4261e-290)}
; Y = -1.381356002550761186142835867940448224544525146484375p175 {- 1717474750983110 175 (-6.61538e+052)}
; 1.6422995619143894163727281920728273689746856689453125p-961 > -1.381356002550761186142835867940448224544525146484375p175 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000111110 #b1010010001101101101111100111110010101000010011010101)))
(assert (= y (fp #b1 #b10010101110 #b0110000110100000100011000000011100010110101111000110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

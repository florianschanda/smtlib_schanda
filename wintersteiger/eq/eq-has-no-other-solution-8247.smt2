(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4933113442774637036336571327410638332366943359375p839 {+ 2221676786265624 839 (5.47415e+252)}
; Y = -1.7608744601419952235943355844938196241855621337890625p631 {- 3426673935171217 631 (-1.56912e+190)}
; 1.4933113442774637036336571327410638332366943359375p839 = -1.7608744601419952235943355844938196241855621337890625p631 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101000110 #b0111111001001001101001101111101001101010111000011000)))
(assert (= y (fp #b1 #b11001110110 #b1100001011001000101010110010101010101011111010010001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

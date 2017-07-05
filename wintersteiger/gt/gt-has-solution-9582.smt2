(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.618033294979718927919520865543745458126068115234375p-759 {- 2783374516973222 -759 (-5.33606e-229)}
; Y = 1.34987227169879364652160802506841719150543212890625p-590 {+ 1575684632449956 -590 (3.33116e-178)}
; -1.618033294979718927919520865543745458126068115234375p-759 > 1.34987227169879364652160802506841719150543212890625p-590 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100001000 #b1001111000110111011011100001010111000110111010100110)))
(assert (= y (fp #b0 #b00110110001 #b0101100110010001001110101010110010111001001110100100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

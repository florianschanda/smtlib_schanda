(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.160013985051811413740097123081795871257781982421875p592 {- 720638923453406 592 (-1.88027e+178)}
; Y = 1.9827992095101312219895817179349251091480255126953125p991 {+ 4426134153729845 991 (4.14958e+298)}
; -1.160013985051811413740097123081795871257781982421875p592 < 1.9827992095101312219895817179349251091480255126953125p991 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001001111 #b0010100011110110101011010011000010110011001111011110)))
(assert (= y (fp #b0 #b11111011110 #b1111101110011000101110101001111101100001011100110101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

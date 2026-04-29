(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.273243637192763788590355034102685749530792236328125p-348 {- 1230579942642690 -348 (-2.22061e-105)}
; Y = 1.91705898659899443003951091668568551540374755859375p-241 {+ 4130066510323996 -241 (5.42508e-073)}
; -1.273243637192763788590355034102685749530792236328125p-348 < 1.91705898659899443003951091668568551540374755859375p-241 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010100011 #b0100010111110011010010111000010110010101010000000010)))
(assert (= y (fp #b0 #b01100001110 #b1110101011000100011000001011001111110010000100011100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

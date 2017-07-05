(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.36724803788170223839415484690107405185699462890625p-418 {- 1653938126556580 -418 (-2.0198e-126)}
; Y = -1.0376299172545382365484556430601514875888824462890625p39 {- 169470081325521 39 (-5.70443e+011)}
; -1.36724803788170223839415484690107405185699462890625p-418 < -1.0376299172545382365484556430601514875888824462890625p39 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001011101 #b0101111000000011111101111010100000111000110110100100)))
(assert (= y (fp #b1 #b10000100110 #b0000100110100010000111010011111111110101100111010001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

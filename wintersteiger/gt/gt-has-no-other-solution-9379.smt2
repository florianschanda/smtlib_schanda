(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5142054348486861936606828749063424766063690185546875p-430 {+ 2315775404776427 -430 (5.46118e-130)}
; Y = 1.9007750337505233684254335457808338105678558349609375p553 {+ 4056730106343503 553 (5.60426e+166)}
; 1.5142054348486861936606828749063424766063690185546875p-430 > 1.9007750337505233684254335457808338105678558349609375p553 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001010001 #b1000001110100010111101111010011000011001101111101011)))
(assert (= y (fp #b0 #b11000101000 #b1110011010011001001100010100111100000011000001001111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

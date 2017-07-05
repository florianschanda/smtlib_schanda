(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0853221511804280741131378817954100668430328369140625p981 {- 384256808262625 981 (-2.21812e+295)}
; Y = 1.6063753717707385249013896100223064422607421875p-390 {+ 2730871898353344 -390 (6.37014e-118)}
; -1.0853221511804280741131378817954100668430328369140625p981 = 1.6063753717707385249013896100223064422607421875p-390 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111010100 #b0001010111010111101011000010100011110001101111100001)))
(assert (= y (fp #b0 #b01001111001 #b1001101100111011011010101001011011011010111011000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

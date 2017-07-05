(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8667750142321184458893412738689221441745758056640625p640 {- 3903607631109825 640 (-8.51705e+192)}
; Y = -1.551883844797786071723066925187595188617706298828125p21 {- 2485463877783106 21 (-3.25454e+006)}
; -1.8667750142321184458893412738689221441745758056640625p640 = -1.551883844797786071723066925187595188617706298828125p21 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001111111 #b1101110111100100111101111010001100011101111011000001)))
(assert (= y (fp #b1 #b10000010100 #b1000110101001000010000100111100010011000111001000010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

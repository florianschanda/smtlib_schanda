(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5379120617517758606851430158712901175022125244140625p1010 {+ 2422540560863393 1010 (1.68744e+304)}
; Y = -zero {- 0 -1023 (-0)}
; 1.5379120617517758606851430158712901175022125244140625p1010 / -zero == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111110001 #b1000100110110100100110101101100101011001000010100001)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.201441299351019065255741224973462522029876708984375p-789 {+ 907210960694278 -789 (3.69008e-238)}
; -oo - 1.201441299351019065255741224973462522029876708984375p-789 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b00011101010 #b0011001110010001101010000011000011000110110000000110)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.sub roundTowardZero x y) r))
(check-sat)
(exit)

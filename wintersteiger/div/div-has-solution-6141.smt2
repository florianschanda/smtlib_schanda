(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8497029045448589723577015320188365876674652099609375p746 {- 3826721684283855 746 (-6.84666e+224)}
; Y = -1.38272199737176304523700309800915420055389404296875p-839 {- 1723626644749964 -839 (-3.77197e-253)}
; -1.8497029045448589723577015320188365876674652099609375p746 / -1.38272199737176304523700309800915420055389404296875p-839 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011101001 #b1101100110000110001000010010101001010110000111001111)))
(assert (= y (fp #b1 #b00010111000 #b0110000111111010000100011001111000101011111010001100)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)

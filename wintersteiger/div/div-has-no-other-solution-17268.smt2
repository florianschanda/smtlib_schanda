(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.894144062283409812863510524039156734943389892578125p946 {- 4026866865715106 946 (-1.12665e+285)}
; Y = 1.0811843829620244594735822829534299671649932861328125p-540 {+ 365621956856077 -540 (3.00402e-163)}
; -1.894144062283409812863510524039156734943389892578125p946 / 1.0811843829620244594735822829534299671649932861328125p-540 == -oo
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
(assert (= x (fp #b1 #b11110110001 #b1110010011100110101000000001000101101011011110100010)))
(assert (= y (fp #b0 #b00111100011 #b0001010011001000011111111110110111000100100100001101)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)

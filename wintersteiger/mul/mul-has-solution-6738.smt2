(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8995412528781614458495141661842353641986846923828125p615 {+ 4051173651266477 615 (2.58283e+185)}
; Y = -1.5802780526997002308320361407822929322719573974609375p561 {- 2613340021909647 561 (-1.19278e+169)}
; 1.8995412528781614458495141661842353641986846923828125p615 * -1.5802780526997002308320361407822929322719573974609375p561 == -oo
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
(assert (= x (fp #b0 #b11001100110 #b1110011001001000010101011110011010000011101110101101)))
(assert (= y (fp #b1 #b11000110000 #b1001010010001101000110100011101011101110100010001111)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9471844409619609717054800057667307555675506591796875p821 {+ 4265739495367419 821 (2.72291e+247)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.9471844409619609717054800057667307555675506591796875p821 - +oo == -oo
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
(assert (= x (fp #b0 #b11100110100 #b1111001001111010101011011111010100110110001011111011)))
(assert (= y (_ +oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)

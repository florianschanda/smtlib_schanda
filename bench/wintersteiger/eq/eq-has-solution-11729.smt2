(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.08332931428209899848980057868175208568572998046875p214 {+ 375281868749900 214 (2.8522e+064)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.08332931428209899848980057868175208568572998046875p214 = -oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011010101 #b0001010101010101000100011110011110100011110001001100)))
(assert (= y (_ -oo 11 53)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

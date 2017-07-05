(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.699699041199904225862837847671471536159515380859375p-118 {+ 3151164341219382 -118 (5.11485e-036)}
; +oo % 1.699699041199904225862837847671471536159515380859375p-118 == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b01110001001 #b1011001100011111011110011111001011111111000000110110)))
(assert (= r (_ NaN 11 53)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)

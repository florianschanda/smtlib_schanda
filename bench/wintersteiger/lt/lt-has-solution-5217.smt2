(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5095705623621735735895299512776546180248260498046875p-6 {+ 2294901794773259 -6 (0.023587)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.5095705623621735735895299512776546180248260498046875p-6 < +oo == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111111001 #b1000001001110011001101110110010001011001100100001011)))
(assert (= y (_ +oo 11 53)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.615834818524196858646746477461419999599456787109375p250 {- 2773473459227350 250 (-2.92345e+075)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.615834818524196858646746477461419999599456787109375p250 < +oo == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011111001 #b1001110110100111010110011100010101001100101011010110)))
(assert (= y (_ +oo 11 53)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

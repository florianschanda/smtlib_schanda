(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.5345507476639486110769894366967491805553436279296875p103 {- 2407402547989979 103 (-1.55622e+031)}
; +oo m -1.5345507476639486110769894366967491805553436279296875p103 == -1.5345507476639486110769894366967491805553436279296875p103
; [HW: -1.5345507476639486110769894366967491805553436279296875p103] 

; mpf : - 2407402547989979 103
; mpfd: - 2407402547989979 103 (-1.55622e+031) class: Neg. norm. non-zero
; hwf : - 2407402547989979 103 (-1.55622e+031) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b10001100110 #b1000100011011000010100010101101101000100110111011011)))
(assert (= r (fp #b1 #b10001100110 #b1000100011011000010100010101101101000100110111011011)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)

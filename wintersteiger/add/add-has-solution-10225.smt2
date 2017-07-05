(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.1385993776968594826115577234304510056972503662109375p-178 {+ 624196105749359 -178 (2.97188e-054)}
; +oo + 1.1385993776968594826115577234304510056972503662109375p-178 == +oo
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
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b01101001101 #b0010001101111011001111111011001001110100001101101111)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.add roundTowardPositive x y) r))
(check-sat)
(exit)

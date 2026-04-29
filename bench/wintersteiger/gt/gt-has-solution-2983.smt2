(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.5596165034380475855613212843309156596660614013671875p490 {- 2520288676353971 490 (-4.98558e+147)}
; +oo > -1.5596165034380475855613212843309156596660614013671875p490 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b10111101001 #b1000111101000011000001101111010010010001011110110011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

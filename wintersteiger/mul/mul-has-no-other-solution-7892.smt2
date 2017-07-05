(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8007135287513056365327202001935802400112152099609375p900 {- 3606093149714895 900 (-1.52209e+271)}
; Y = 1.0144510563591400131855380095657892525196075439453125p666 {+ 65081772034133 666 (3.10605e+200)}
; -1.8007135287513056365327202001935802400112152099609375p900 * 1.0144510563591400131855380095657892525196075439453125p666 == -oo
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
(assert (= x (fp #b1 #b11110000011 #b1100110011111011100011111101001101110011100111001111)))
(assert (= y (fp #b0 #b11010011001 #b0000001110110011000100000111111001110100100001010101)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.768280101628619593867597359349019825458526611328125p846 {- 3460025979410818 846 (-8.29712e+254)}
; Y = 1.0696741217940239909722777156275697052478790283203125p-1001 {+ 313784348948933 -1001 (4.99144e-302)}
; -1.768280101628619593867597359349019825458526611328125p846 / 1.0696741217940239909722777156275697052478790283203125p-1001 == -oo
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
(assert (= x (fp #b1 #b11101001101 #b1100010010101110000000010011011010101001100110000010)))
(assert (= y (fp #b0 #b00000010110 #b0001000111010110001010011100101001111011100111000101)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

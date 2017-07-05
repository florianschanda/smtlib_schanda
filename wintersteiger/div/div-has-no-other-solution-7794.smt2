(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2282823575581665043188195340917445719242095947265625p625 {- 1028092340434217 625 (-1.71019e+188)}
; Y = 1.82821162389046776297618634998798370361328125p-619 {+ 3729933560737024 -619 (8.40348e-187)}
; -1.2282823575581665043188195340917445719242095947265625p625 / 1.82821162389046776297618634998798370361328125p-619 == -oo
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
(assert (= x (fp #b1 #b11001110000 #b0011101001110000101101100110101111110111010100101001)))
(assert (= y (fp #b0 #b00110010100 #b1101010000000101101011010100111011000110110100000000)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

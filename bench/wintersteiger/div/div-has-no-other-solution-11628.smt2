(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.920377080060209351586308912374079227447509765625p944 {+ 4145009874799504 944 (2.85563e+284)}
; Y = -1.129597847755318351659070685855112969875335693359375p-553 {- 583656818858870 -553 (-3.83121e-167)}
; 1.920377080060209351586308912374079227447509765625p944 / -1.129597847755318351659070685855112969875335693359375p-553 == -oo
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
(assert (= x (fp #b0 #b11110101111 #b1110101110011101110101010001001011011000101110010000)))
(assert (= y (fp #b1 #b00111010110 #b0010000100101101010100110001010110111101101101110110)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

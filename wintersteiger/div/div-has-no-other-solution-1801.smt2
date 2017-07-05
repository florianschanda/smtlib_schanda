(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.41121919734392964329572350834496319293975830078125p862 {- 1851966623925716 862 (-4.33961e+259)}
; Y = 1.8031744443203867600544754168367944657802581787109375p-592 {+ 3617176128154799 -592 (1.11245e-178)}
; -1.41121919734392964329572350834496319293975830078125p862 / 1.8031744443203867600544754168367944657802581787109375p-592 == -oo
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
(assert (= x (fp #b1 #b11101011101 #b0110100101000101101010010100110000010100010111010100)))
(assert (= y (fp #b0 #b00110101111 #b1100110110011100110101110010001101010110110010101111)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)

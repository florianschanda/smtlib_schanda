(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4558813051457588638726292629144154489040374755859375p-274 {+ 2053106875979615 -274 (4.79631e-083)}
; 1.4558813051457588638726292629144154489040374755859375p-274 S == 1.2065990656161471594742806701106019318103790283203125p-137
; [HW: 1.2065990656161471594742806701106019318103790283203125p-137] 

; mpf : + 930439474923973 -137
; mpfd: + 930439474923973 -137 (6.92554e-042) class: Pos. norm. non-zero
; hwf : + 930439474923973 -137 (6.92554e-042) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011101101 #b0111010010110100101000110010000001110101011101011111)))
(assert (= r (fp #b0 #b01101110110 #b0011010011100011101011010010011000110100100111000101)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)

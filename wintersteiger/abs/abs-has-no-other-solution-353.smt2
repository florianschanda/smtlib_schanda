(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2486983809527412159212644837680272758007049560546875p-331 {+ 1120037935786411 -331 (2.85449e-100)}
; 1.2486983809527412159212644837680272758007049560546875p-331 | == 1.2486983809527412159212644837680272758007049560546875p-331
; [HW: 1.2486983809527412159212644837680272758007049560546875p-331] 

; mpf : + 1120037935786411 -331
; mpfd: + 1120037935786411 -331 (2.85449e-100) class: Pos. norm. non-zero
; hwf : + 1120037935786411 -331 (2.85449e-100) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010110100 #b0011111110101010101100100111010011000010100110101011)))
(assert (= r (fp #b0 #b01010110100 #b0011111110101010101100100111010011000010100110101011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

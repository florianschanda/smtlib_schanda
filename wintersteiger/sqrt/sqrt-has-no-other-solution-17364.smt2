(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8458564106817980654540178875322453677654266357421875p-367 {+ 3809398615955491 -367 (6.1403e-111)}
; 1.8458564106817980654540178875322453677654266357421875p-367 S == 1.9213830490986423260579840643913485109806060791015625p-184
; [HW: 1.9213830490986423260579840643913485109806060791015625p-184] 

; mpf : + 4149540356586137 -184
; mpfd: + 4149540356586137 -184 (7.83601e-056) class: Pos. norm. non-zero
; hwf : + 4149540356586137 -184 (7.83601e-056) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010010000 #b1101100010001010000010111011010011111101100000100011)))
(assert (= r (fp #b0 #b01101000111 #b1110101111011111110000100110111011110111101010011001)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)

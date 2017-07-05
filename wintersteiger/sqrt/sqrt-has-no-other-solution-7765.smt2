(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.043830691839932267583890279638580977916717529296875p166 {+ 197395887437710 166 (9.76359e+049)}
; 1.043830691839932267583890279638580977916717529296875p166 S == 1.0216803276171722014709075665450654923915863037109375p83
; [HW: 1.0216803276171722014709075665450654923915863037109375p83] 

; mpf : + 97639515377967 83
; mpfd: + 97639515377967 83 (9.88109e+024) class: Pos. norm. non-zero
; hwf : + 97639515377967 83 (9.88109e+024) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010100101 #b0000101100111000011111001111110000000011011110001110)))
(assert (= r (fp #b0 #b10001010010 #b0000010110001100110101111000101000010101000100101111)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)

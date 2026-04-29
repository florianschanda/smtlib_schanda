(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.875978421754875835603115774574689567089080810546875p-678 {+ 3945056093799854 -678 (1.49586e-204)}
; Y = 1.982679409739495302034129053936339914798736572265625p-830 {+ 4425594623527450 -830 (2.76921e-250)}
; 1.875978421754875835603115774574689567089080810546875p-678 * 1.982679409739495302034129053936339914798736572265625p-830 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101011001 #b1110000001000000000111110011000101110000010110101110)))
(assert (= y (fp #b0 #b00011000001 #b1111101110010000111000001011011101001000101000011010)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

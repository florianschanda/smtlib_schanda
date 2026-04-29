(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2329183212644971856519759967341087758541107177734375 518 {+ 1048970864854551 518 (1.05797e+156)}
; 1.2329183212644971856519759967341087758541107177734375 518 I == 1.2329183212644971856519759967341087758541107177734375 518
; [HW: 1.2329183212644971856519759967341087758541107177734375 518] 

; mpf : + 1048970864854551 518
; mpfd: + 1048970864854551 518 (1.05797e+156) class: Pos. norm. non-zero
; hwf : + 1048970864854551 518 (1.05797e+156) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000000101 #b0011101110100000100010001111110001111000011000010111)))
(assert (= r (fp #b0 #b11000000101 #b0011101110100000100010001111110001111000011000010111)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)

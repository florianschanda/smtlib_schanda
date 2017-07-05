(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.33803374724680335106086204177699983119964599609375p-615 {+ 1522368658139356 -615 (9.84056e-186)}
; 1.33803374724680335106086204177699983119964599609375p-615 S == 1.63586903341728628902274067513644695281982421875p-308
; [HW: 1.63586903341728628902274067513644695281982421875p-308] 

; mpf : + 2863699541954528 -308
; mpfd: + 2863699541954528 -308 (3.13697e-093) class: Pos. norm. non-zero
; hwf : + 2863699541954528 -308 (3.13697e-093) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110011000 #b0101011010001001011000010011000101011110100011011100)))
(assert (= r (fp #b0 #b01011001011 #b1010001011001000010100000001111100010000111111100000)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

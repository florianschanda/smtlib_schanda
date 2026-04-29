(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2489612846198898665761589654721319675445556640625p-152 {+ 1121221948643816 -152 (2.18771e-046)}
; 1.2489612846198898665761589654721319675445556640625p-152 S == 1.11756936456753752651138711371459066867828369140625p-76
; [HW: 1.11756936456753752651138711371459066867828369140625p-76] 

; mpf : + 529485346456548 -76
; mpfd: + 529485346456548 -76 (1.47909e-023) class: Pos. norm. non-zero
; hwf : + 529485346456548 -76 (1.47909e-023) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101100111 #b0011111110111011111011010011111101101001100111101000)))
(assert (= r (fp #b0 #b01110110011 #b0001111000011001000001101001111111010100001111100100)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)

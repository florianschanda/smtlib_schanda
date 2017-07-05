(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.748534281069055840163173343171365559101104736328125p-902 {+ 3371098709296642 -902 (5.17152e-272)}
; 1.748534281069055840163173343171365559101104736328125p-902 S == 1.32232154980135430122345496783964335918426513671875p-451
; [HW: 1.32232154980135430122345496783964335918426513671875p-451] 

; mpf : + 1451607211578860 -451
; mpfd: + 1451607211578860 -451 (2.2741e-136) class: Pos. norm. non-zero
; hwf : + 1451607211578860 -451 (2.2741e-136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001111001 #b1011111110011111111100010101000100100000011000000010)))
(assert (= r (fp #b0 #b01000111100 #b0101001010000011101010100100001100110001010111101100)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

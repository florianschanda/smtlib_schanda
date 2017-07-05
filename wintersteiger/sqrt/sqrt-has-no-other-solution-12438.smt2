(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.771564025866487757099321243003942072391510009765625p-14 {+ 3474815459384794 -14 (0.000108128)}
; 1.771564025866487757099321243003942072391510009765625p-14 S == 1.331001136688653385675706886104308068752288818359375p-7
; [HW: 1.331001136688653385675706886104308068752288818359375p-7] 

; mpf : + 1490696595850230 -7
; mpfd: + 1490696595850230 -7 (0.0103984) class: Pos. norm. non-zero
; hwf : + 1490696595850230 -7 (0.0103984) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111110001 #b1100010110000101001110000101000111011101110111011010)))
(assert (= r (fp #b0 #b01111111000 #b0101010010111100011111011001000100000100001111110110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

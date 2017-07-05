(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.555381064043892980208738663350231945514678955078125 12 {+ 2501213953076706 12 (6370.84)}
; 1.555381064043892980208738663350231945514678955078125 12 I == 1.55517578125 12
; [HW: 1.55517578125 12] 

; mpf : + 2500289441562624 12
; mpfd: + 2500289441562624 12 (6370) class: Pos. norm. non-zero
; hwf : + 2500289441562624 12 (6370) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000001011 #b1000111000101101011101000001001011100010110111100010)))
(assert (= r (fp #b0 #b10000001011 #b1000111000100000000000000000000000000000000000000000)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

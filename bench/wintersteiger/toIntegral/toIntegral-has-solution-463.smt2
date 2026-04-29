(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.13327719507298407819462227053008973598480224609375 178 {+ 600227126067676 178 (4.34186e+053)}
; 1.13327719507298407819462227053008973598480224609375 178 I == 1.13327719507298407819462227053008973598480224609375 178
; [HW: 1.13327719507298407819462227053008973598480224609375 178] 

; mpf : + 600227126067676 178
; mpfd: + 600227126067676 178 (4.34186e+053) class: Pos. norm. non-zero
; hwf : + 600227126067676 178 (4.34186e+053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010110001 #b0010001000011110011101000100101000100100000111011100)))
(assert (= r (fp #b0 #b10010110001 #b0010001000011110011101000100101000100100000111011100)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)

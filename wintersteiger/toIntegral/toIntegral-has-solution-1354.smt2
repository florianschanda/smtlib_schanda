(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4579825472453842305498028508736751973628997802734375 611 {+ 2062570029116503 611 (1.23902e+184)}
; 1.4579825472453842305498028508736751973628997802734375 611 I == 1.4579825472453842305498028508736751973628997802734375 611
; [HW: 1.4579825472453842305498028508736751973628997802734375 611] 

; mpf : + 2062570029116503 611
; mpfd: + 2062570029116503 611 (1.23902e+184) class: Pos. norm. non-zero
; hwf : + 2062570029116503 611 (1.23902e+184) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001100010 #b0111010100111110010110000001111010001110110001010111)))
(assert (= r (fp #b0 #b11001100010 #b0111010100111110010110000001111010001110110001010111)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5555056479846001149525136497686617076396942138671875 242 {+ 2501775029265651 242 (1.09934e+073)}
; 1.5555056479846001149525136497686617076396942138671875 242 I == 1.5555056479846001149525136497686617076396942138671875 242
; [HW: 1.5555056479846001149525136497686617076396942138671875 242] 

; mpf : + 2501775029265651 242
; mpfd: + 2501775029265651 242 (1.09934e+073) class: Pos. norm. non-zero
; hwf : + 2501775029265651 242 (1.09934e+073) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011110001 #b1000111000110101100111100011111011010110010011110011)))
(assert (= r (fp #b0 #b10011110001 #b1000111000110101100111100011111011010110010011110011)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

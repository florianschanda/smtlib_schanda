(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5813525838594753025745376362465322017669677734375 153 {+ 2618179280040408 153 (1.80559e+046)}
; 1.5813525838594753025745376362465322017669677734375 153 I == 1.5813525838594753025745376362465322017669677734375 153
; [HW: 1.5813525838594753025745376362465322017669677734375 153] 

; mpf : + 2618179280040408 153
; mpfd: + 2618179280040408 153 (1.80559e+046) class: Pos. norm. non-zero
; hwf : + 2618179280040408 153 (1.80559e+046) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010011000 #b1001010011010011100001011101111100011111000111011000)))
(assert (= r (fp #b0 #b10010011000 #b1001010011010011100001011101111100011111000111011000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

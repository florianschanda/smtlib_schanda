(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6017272913868347838928229975863359868526458740234375 173 {- 2709938805268407 173 (-1.91769e+052)}
; -1.6017272913868347838928229975863359868526458740234375 173 I == -1.6017272913868347838928229975863359868526458740234375 173
; [HW: -1.6017272913868347838928229975863359868526458740234375 173] 

; mpf : - 2709938805268407 173
; mpfd: - 2709938805268407 173 (-1.91769e+052) class: Neg. norm. non-zero
; hwf : - 2709938805268407 173 (-1.91769e+052) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010101100 #b1001101000001010110011001011110110011101111110110111)))
(assert (= r (fp #b1 #b10010101100 #b1001101000001010110011001011110110011101111110110111)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

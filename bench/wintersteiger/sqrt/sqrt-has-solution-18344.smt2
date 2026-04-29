(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.70742912300917115686615943559445440769195556640625p-294 {+ 3185977534775140 -294 (5.36443e-089)}
; 1.70742912300917115686615943559445440769195556640625p-294 S == 1.3066863139289288664457444610889069736003875732421875p-147
; [HW: 1.3066863139289288664457444610889069736003875732421875p-147] 

; mpf : + 1381192369129955 -147
; mpfd: + 1381192369129955 -147 (7.32423e-045) class: Pos. norm. non-zero
; hwf : + 1381192369129955 -147 (7.32423e-045) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011011001 #b1011010100011010000100110011001110001111111101100100)))
(assert (= r (fp #b0 #b01101101100 #b0100111010000010111111101000100001110100100111100011)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)

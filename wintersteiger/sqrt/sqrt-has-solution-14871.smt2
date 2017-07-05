(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0938597384331483208796953476849012076854705810546875p-519 {+ 422706683032619 -519 (6.37373e-157)}
; 1.0938597384331483208796953476849012076854705810546875p-519 S == 1.479094140636861620663466965197585523128509521484375p-260
; [HW: 1.479094140636861620663466965197585523128509521484375p-260] 

; mpf : + 2157648193247558 -260
; mpfd: + 2157648193247558 -260 (7.98357e-079) class: Pos. norm. non-zero
; hwf : + 2157648193247558 -260 (7.98357e-079) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111111000 #b0001100000000111001100010001101011111011010000101011)))
(assert (= r (fp #b0 #b01011111011 #b0111101010100101111010011110000110111101100101000110)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2092121283832566458471546866348944604396820068359375p-610 {+ 942207663428223 -610 (2.84581e-184)}
; 1.2092121283832566458471546866348944604396820068359375p-610 S == 1.09964181822230511187399315531365573406219482421875p-305
; [HW: 1.09964181822230511187399315531365573406219482421875p-305] 

; mpf : + 448746855416492 -305
; mpfd: + 448746855416492 -305 (1.68695e-092) class: Pos. norm. non-zero
; hwf : + 448746855416492 -305 (1.68695e-092) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110011101 #b0011010110001110111011010001000101010101001001111111)))
(assert (= r (fp #b0 #b01011001110 #b0001100110000010001000000100111010010100001010101100)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)

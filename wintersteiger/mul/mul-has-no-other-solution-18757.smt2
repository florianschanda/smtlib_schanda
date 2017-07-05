(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.55285162286254863062140429974533617496490478515625p-751 {- 2489822362714948 -751 (-1.311e-226)}
; Y = -1.4121325136232296681981779329362325370311737060546875p-857 {- 1856079834780843 -857 (-1.4695e-258)}
; -1.55285162286254863062140429974533617496490478515625p-751 * -1.4121325136232296681981779329362325370311737060546875p-857 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100010000 #b1000110110000111101011110001011110111100001101000100)))
(assert (= y (fp #b1 #b00010100110 #b0110100110000001100001000011001110100001010010101011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

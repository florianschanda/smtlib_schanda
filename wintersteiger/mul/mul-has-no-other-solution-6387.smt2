(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3910405376879524386168895944138057529926300048828125p29 {- 1761090019818221 29 (-7.46809e+008)}
; Y = -1.097726022860980865658575567067600786685943603515625p-158 {- 440118880141114 -158 (-3.00438e-048)}
; -1.3910405376879524386168895944138057529926300048828125p29 * -1.097726022860980865658575567067600786685943603515625p-158 == 1.5269813970745962361519332262105308473110198974609375p-129
; [HW: 1.5269813970745962361519332262105308473110198974609375p-129] 

; mpf : + 2373313223496335 -129
; mpfd: + 2373313223496335 -129 (2.2437e-039) class: Pos. norm. non-zero
; hwf : + 2373313223496335 -129 (2.2437e-039) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000011100 #b0110010000011011001110111001000011000111101011101101)))
(assert (= y (fp #b1 #b01101100001 #b0001100100000100100100101001100000100111111100111010)))
(assert (= r (fp #b0 #b01101111110 #b1000011011101000010000001011101000001001001010001111)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)

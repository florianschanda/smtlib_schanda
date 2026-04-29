(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.447699931059286626577886636368930339813232421875 270 {- 2016261242692400 270 (-2.74649e+081)}
; -1.447699931059286626577886636368930339813232421875 270 I == -1.447699931059286626577886636368930339813232421875 270
; [HW: -1.447699931059286626577886636368930339813232421875 270] 

; mpf : - 2016261242692400 270
; mpfd: - 2016261242692400 270 (-2.74649e+081) class: Neg. norm. non-zero
; hwf : - 2016261242692400 270 (-2.74649e+081) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100001101 #b0111001010011100011101100111001001010010001100110000)))
(assert (= r (fp #b1 #b10100001101 #b0111001010011100011101100111001001010010001100110000)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)

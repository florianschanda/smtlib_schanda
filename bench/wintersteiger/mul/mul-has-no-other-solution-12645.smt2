(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.87672554803063018624698088387958705425262451171875p-769 {- 3948420851416940 -769 (-6.04413e-232)}
; Y = -1.354174106072892680430186373996548354625701904296875p-576 {- 1595058372134158 -576 (-5.47516e-174)}
; -1.87672554803063018624698088387958705425262451171875p-769 * -1.354174106072892680430186373996548354625701904296875p-576 == +zero
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
(assert (= x (fp #b1 #b00011111110 #b1110000001110001000101011110010001011011111101101100)))
(assert (= y (fp #b1 #b00110111111 #b0101101010101011001001110111101010101100010100001110)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)

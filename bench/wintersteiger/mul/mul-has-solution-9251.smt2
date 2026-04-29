(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0207881540931815766981571869109757244586944580078125p-626 {- 93621523027773 -626 (-3.66571e-189)}
; Y = -1.57358870055771671303546099807135760784149169921875p-593 {- 2583213858095660 -593 (-4.85405e-179)}
; -1.0207881540931815766981571869109757244586944580078125p-626 * -1.57358870055771671303546099807135760784149169921875p-593 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110001101 #b0000010101010010010111110101100111111001011100111101)))
(assert (= y (fp #b1 #b00110101110 #b1001001011010110101101011000011001000000001000101100)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)

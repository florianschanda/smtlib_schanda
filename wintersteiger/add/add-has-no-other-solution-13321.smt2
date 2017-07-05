(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.006758936382564417755247632157988846302032470703125p829 {+ 30439543373938 829 (3.60406e+249)}
; Y = 1.86953408736792514588387348339892923831939697265625p-102 {+ 3916033391856132 -102 (3.68701e-031)}
; 1.006758936382564417755247632157988846302032470703125p829 + 1.86953408736792514588387348339892923831939697265625p-102 == 1.0067589363825646397998525571892969310283660888671875p829
; [HW: 1.0067589363825646397998525571892969310283660888671875p829] 

; mpf : + 30439543373939 829
; mpfd: + 30439543373939 829 (3.60406e+249) class: Pos. norm. non-zero
; hwf : + 30439543373939 829 (3.60406e+249) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100111100 #b0000000110111010111101000010001010111000000001110010)))
(assert (= y (fp #b0 #b01110011001 #b1101111010011001110010010011010000000000101000000100)))
(assert (= r (fp #b0 #b11100111100 #b0000000110111010111101000010001010111000000001110011)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)

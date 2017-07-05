(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3184582824941220025039001484401524066925048828125p-757 {- 1434208602373576 -757 (-1.73924e-228)}
; Y = 1.5917974506419174662852356050279922783374786376953125p-655 {+ 2665218778189749 -655 (1.06473e-197)}
; -1.3184582824941220025039001484401524066925048828125p-757 * 1.5917974506419174662852356050279922783374786376953125p-655 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100001010 #b0101000110000110011110110110010001110011110111001000)))
(assert (= y (fp #b0 #b00101110000 #b1001011110000000000010011010100001011100111110110101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

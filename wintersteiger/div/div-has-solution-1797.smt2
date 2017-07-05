(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.60717230507191377597564496682025492191314697265625p-657 {+ 2734460966871556 -657 (2.68754e-198)}
; Y = -1.644639510817559102662244185921736061573028564453125p800 {- 2903198260706258 800 (-1.09665e+241)}
; 1.60717230507191377597564496682025492191314697265625p-657 / -1.644639510817559102662244185921736061573028564453125p800 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101101110 #b1001101101101111101001001110100101010010001000000100)))
(assert (= y (fp #b1 #b11100011111 #b1010010100000111000110000101000010101011101111010010)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)

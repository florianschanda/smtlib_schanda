(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0485013694539226936086606656317599117755889892578125p343 {+ 218430749399645 343 (1.8787e+103)}
; 1.0485013694539226936086606656317599117755889892578125p343 S == 1.4481031520260720935056042435462586581707000732421875p171
; [HW: 1.4481031520260720935056042435462586581707000732421875p171] 

; mpf : + 2018077188488163 171
; mpfd: + 2018077188488163 171 (4.3344e+051) class: Pos. norm. non-zero
; hwf : + 2018077188488163 171 (4.3344e+051) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101010110 #b0000110001101010100101011111001110011101101001011101)))
(assert (= r (fp #b0 #b10010101010 #b0111001010110110111000110101111100101111101111100011)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

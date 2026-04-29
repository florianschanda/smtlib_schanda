(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.702070642925062049499729255330748856067657470703125p-70 {- 3161845085865074 -70 (-1.44171e-021)}
; Y = 1.44747407405668671032117345021106302738189697265625p-588 {+ 2015244073179652 -588 (1.42881e-177)}
; -1.702070642925062049499729255330748856067657470703125p-70 < 1.44747407405668671032117345021106302738189697265625p-588 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110111001 #b1011001110111010111001101101001011011000010001110010)))
(assert (= y (fp #b0 #b00110110011 #b0111001010001101101010010011000111100001101000000100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

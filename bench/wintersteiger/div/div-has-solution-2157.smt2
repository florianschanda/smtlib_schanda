(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.50136273141830134392193940584547817707061767578125p-867 {- 2257937010392916 -867 (-1.52574e-261)}
; Y = -1.4541361536309975743819222770980559289455413818359375p627 {- 2045247412268031 627 (-8.09864e+188)}
; -1.50136273141830134392193940584547817707061767578125p-867 / -1.4541361536309975743819222770980559289455413818359375p627 == +zero
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
(assert (= x (fp #b1 #b00010011100 #b1000000001011001010011101101011011011111111101010100)))
(assert (= y (fp #b1 #b11001110010 #b0111010001000010010001000101011111000110101111111111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)

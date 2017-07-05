(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6160224389770834196866644560941495001316070556640625p774 {+ 2774318426629057 774 (1.6057e+233)}
; Y = -1.08188975086360184008071882999502122402191162109375p-912 {- 368798651474780 -912 (-3.12483e-275)}
; 1.6160224389770834196866644560941495001316070556640625p774 > -1.08188975086360184008071882999502122402191162109375p-912 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100000101 #b1001110110110011101001011000010100000010001111000001)))
(assert (= y (fp #b1 #b00001101111 #b0001010011110110101110100000100111010110001101011100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9057391033605159957886598931509070098400115966796875p-6 {- 4079086288389307 -6 (-0.0297772)}
; Y = -1.771873801236917511658930379780940711498260498046875p829 {- 3476210563627630 829 (-6.34307e+249)}
; -1.9057391033605159957886598931509070098400115966796875p-6 = -1.771873801236917511658930379780940711498260498046875p829 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111111001 #b1110011111011110100001001001001110100100010010111011)))
(assert (= y (fp #b1 #b11100111100 #b1100010110011001100001010111110011110011101001101110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

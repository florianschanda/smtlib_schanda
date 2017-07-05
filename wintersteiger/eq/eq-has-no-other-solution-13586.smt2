(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.686513099606511634220851192367263138294219970703125p-835 {- 3091780139572850 -835 (-7.36111e-252)}
; Y = -1.3813986879708652910636601518490351736545562744140625p-34 {- 1717666989025185 -34 (-8.0408e-011)}
; -1.686513099606511634220851192367263138294219970703125p-835 = -1.3813986879708652910636601518490351736545562744140625p-34 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010111100 #b1010111110111111010100101000111100010101111001110010)))
(assert (= y (fp #b1 #b01111011101 #b0110000110100011010110000010101110010010011110100001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

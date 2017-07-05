(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8245405456664312016101803237688727676868438720703125p-656 {- 3713400494215205 -656 (-6.10206e-198)}
; Y = -1.6954690149850346614357476937584578990936279296875p898 {- 3132113996734328 898 (-3.58283e+270)}
; Z = 1.9585617065098215316965024612727575004100799560546875p874 {+ 4316978144249259 874 (2.46691e+263)}
; -1.8245405456664312016101803237688727676868438720703125p-656 x -1.6954690149850346614357476937584578990936279296875p898 1.9585617065098215316965024612727575004100799560546875p874 == 1.95856170650982175374110738630406558513641357421875p874
; [HW: 1.95856170650982175374110738630406558513641357421875p874] 

; mpf : + 4316978144249260 874
; mpfd: + 4316978144249260 874 (2.46691e+263) class: Pos. norm. non-zero
; hwf : + 4316978144249260 874 (2.46691e+263) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101101111 #b1101001100010101000101101101010111011101000000100101)))
(assert (= y (fp #b1 #b11110000001 #b1011001000001010010000011110001010111101111101111000)))
(assert (= z (fp #b0 #b11101101001 #b1111010101100100010011001100110010101000010110101011)))
(assert (= r (fp #b0 #b11101101001 #b1111010101100100010011001100110010101000010110101100)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)

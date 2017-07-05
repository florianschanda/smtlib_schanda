(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.149329068000324749476703800610266625881195068359375p-812 {+ 672518335001846 -812 (4.20812e-245)}
; Y = 1.3398807046863538960934647548128850758075714111328125p-829 {+ 1530686614975885 -829 (3.74283e-250)}
; 1.149329068000324749476703800610266625881195068359375p-812 + 1.3398807046863538960934647548128850758075714111328125p-829 == 1.1493392904788455322062645791447721421718597412109375p-812
; [HW: 1.1493392904788455322062645791447721421718597412109375p-812] 

; mpf : + 672564372952303 -812
; mpfd: + 672564372952303 -812 (4.20816e-245) class: Pos. norm. non-zero
; hwf : + 672564372952303 -812 (4.20816e-245) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011010011 #b0010011000111010011011100000011101100111010011110110)))
(assert (= y (fp #b0 #b00011000010 #b0101011100000010011010111111111100101011010110001101)))
(assert (= r (fp #b0 #b00011010011 #b0010011000111011000110011000100010011101010011101111)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)

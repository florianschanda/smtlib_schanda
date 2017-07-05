(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.47023143942022027630400771158747375011444091796875p-507 {+ 2117734135350796 -507 (3.50896e-153)}
; Y = -1.6459612348408214632655699460883624851703643798828125p-619 {- 2909150776524909 -619 (-7.56576e-187)}
; 1.47023143942022027630400771158747375011444091796875p-507 m -1.6459612348408214632655699460883624851703643798828125p-619 == -1.6459612348408214632655699460883624851703643798828125p-619
; [HW: -1.6459612348408214632655699460883624851703643798828125p-619] 

; mpf : - 2909150776524909 -619
; mpfd: - 2909150776524909 -619 (-7.56576e-187) class: Neg. norm. non-zero
; hwf : - 2909150776524909 -619 (-7.56576e-187) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000000100 #b0111100001100001000101100110110111011100011000001100)))
(assert (= y (fp #b1 #b00110010100 #b1010010101011101101101110010101000100000000001101101)))
(assert (= r (fp #b1 #b00110010100 #b1010010101011101101101110010101000100000000001101101)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)

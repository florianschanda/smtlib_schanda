(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.603757799393223937300945181050337851047515869140625p-59 {- 2719083400369354 -59 (-2.78208e-018)}
; Y = 1.4893503103725063141382634057663381099700927734375p-313 {+ 2203837875447256 -313 (8.925e-095)}
; -1.603757799393223937300945181050337851047515869140625p-59 m 1.4893503103725063141382634057663381099700927734375p-313 == -1.603757799393223937300945181050337851047515869140625p-59
; [HW: -1.603757799393223937300945181050337851047515869140625p-59] 

; mpf : - 2719083400369354 -59
; mpfd: - 2719083400369354 -59 (-2.78208e-018) class: Neg. norm. non-zero
; hwf : - 2719083400369354 -59 (-2.78208e-018) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111000100 #b1001101010001111110111110000001100011001010011001010)))
(assert (= y (fp #b0 #b01011000110 #b0111110101000110000011111101101101010110010111011000)))
(assert (= r (fp #b1 #b01111000100 #b1001101010001111110111110000001100011001010011001010)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)

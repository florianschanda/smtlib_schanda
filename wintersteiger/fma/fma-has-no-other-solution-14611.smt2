(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1144871927427504321173046264448203146457672119140625p-358 {- 515604478574945 -358 (-1.89818e-108)}
; Y = 1.6093310199005019800466698143281973898410797119140625p-195 {+ 2744182954169185 -195 (3.20477e-059)}
; Z = -1.42314983474812972730205729021690785884857177734375p431 {- 1905697438093564 431 (-7.89185e+129)}
; -1.1144871927427504321173046264448203146457672119140625p-358 x 1.6093310199005019800466698143281973898410797119140625p-195 -1.42314983474812972730205729021690785884857177734375p431 == -1.4231498347481299493466622152482159435749053955078125p431
; [HW: -1.4231498347481299493466622152482159435749053955078125p431] 

; mpf : - 1905697438093565 431
; mpfd: - 1905697438093565 431 (-7.89185e+129) class: Neg. norm. non-zero
; hwf : - 1905697438093565 431 (-7.89185e+129) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010011001 #b0001110101001111000010000101110010100100000101100001)))
(assert (= y (fp #b0 #b01100111100 #b1001101111111101000111100010001011101001001101100001)))
(assert (= z (fp #b1 #b10110101110 #b0110110001010011100011000010110110001101000011111100)))
(assert (= r (fp #b1 #b10110101110 #b0110110001010011100011000010110110001101000011111101)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)

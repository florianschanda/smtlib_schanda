(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4440742809414148783986320268013514578342437744140625p377 {- 1999932766172577 377 (-4.44527e+113)}
; Y = 1.64683626047980080642219036235474050045013427734375p566 {+ 2913091541666556 566 (3.97766e+170)}
; -1.4440742809414148783986320268013514578342437744140625p377 % 1.64683626047980080642219036235474050045013427734375p566 == -1.4440742809414148783986320268013514578342437744140625p377
; [HW: -1.4440742809414148783986320268013514578342437744140625p377] 

; mpf : - 1999932766172577 377
; mpfd: - 1999932766172577 377 (-4.44527e+113) class: Neg. norm. non-zero
; hwf : - 1999932766172577 377 (-4.44527e+113) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101111000 #b0111000110101110110110100010000110100011010110100001)))
(assert (= y (fp #b0 #b11000110101 #b1010010110010111000011111010100010100000101011111100)))
(assert (= r (fp #b1 #b10101111000 #x71aeda21a35a1)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)

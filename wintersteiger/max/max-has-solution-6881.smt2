(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.677787157432384379518452988122589886188507080078125p997 {- 3052481989648994 997 (-2.2472e+300)}
; Y = 1.013185749629753384937203009030781686305999755859375p-44 {+ 59383337119158 -44 (5.75929e-014)}
; -1.677787157432384379518452988122589886188507080078125p997 M 1.013185749629753384937203009030781686305999755859375p-44 == 1.013185749629753384937203009030781686305999755859375p-44
; [HW: 1.013185749629753384937203009030781686305999755859375p-44] 

; mpf : + 59383337119158 -44
; mpfd: + 59383337119158 -44 (5.75929e-014) class: Pos. norm. non-zero
; hwf : + 59383337119158 -44 (5.75929e-014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111100100 #b1010110110000011011101011000101011010010001001100010)))
(assert (= y (fp #b0 #b01111010011 #b0000001101100000001001000010101101101110110110110110)))
(assert (= r (fp #b0 #b01111010011 #b0000001101100000001001000010101101101110110110110110)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)

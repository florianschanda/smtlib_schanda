(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1567338581211961123784703886485658586025238037109375p-687 {+ 705866545030959 -687 (1.80147e-207)}
; Y = -1.366861865785219176672171670361422002315521240234375p540 {- 1652198962046758 540 (-4.91951e+162)}
; 1.1567338581211961123784703886485658586025238037109375p-687 > -1.366861865785219176672171670361422002315521240234375p540 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101010000 #b0010100000011111101101011100101011001110011100101111)))
(assert (= y (fp #b1 #b11000011011 #b0101110111101010101010001100001110110010011100100110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.999799429790269922335710361949168145656585693359375p466 {+ 4502696339448694 466 (3.81035e+140)}
; Y = -1.4919367135903407461938741107587702572345733642578125p-191 {- 2215486000015325 -191 (-4.75358e-058)}
; 1.999799429790269922335710361949168145656585693359375p466 = -1.4919367135903407461938741107587702572345733642578125p-191 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111010001 #b1111111111110010110110101111110110000010001101110110)))
(assert (= y (fp #b1 #b01101000000 #b0111110111101111100100001000000010010010011111011101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.46364106936875426612232331535778939723968505859375p659 {+ 2088053747242780 659 (3.50108e+198)}
; Y = 1.8582349283593144750881265281350351870059967041015625p-702 {+ 3865146503555353 -702 (8.83169e-212)}
; 1.46364106936875426612232331535778939723968505859375p659 M 1.8582349283593144750881265281350351870059967041015625p-702 == 1.46364106936875426612232331535778939723968505859375p659
; [HW: 1.46364106936875426612232331535778939723968505859375p659] 

; mpf : + 2088053747242780 659
; mpfd: + 2088053747242780 659 (3.50108e+198) class: Pos. norm. non-zero
; hwf : + 2088053747242780 659 (3.50108e+198) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010010010 #b0111011010110001001011100101111000000101011100011100)))
(assert (= y (fp #b0 #b00101000001 #b1101101110110101010010001100010110010110100100011001)))
(assert (= r (fp #b0 #b11010010010 #b0111011010110001001011100101111000000101011100011100)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)

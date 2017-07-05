(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8996090693677973870734376760083250701427459716796875p-554 {+ 4051479069583931 -554 (3.22141e-167)}
; Y = -1.76072762959290773920884021208621561527252197265625p-239 {- 3426012669165060 -239 (-1.99307e-072)}
; 1.8996090693677973870734376760083250701427459716796875p-554 > -1.76072762959290773920884021208621561527252197265625p-239 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111010101 #b1110011001001100110001111010110000011110101000111011)))
(assert (= y (fp #b1 #b01100010000 #b1100001010111111000010111100001001000011111000000100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

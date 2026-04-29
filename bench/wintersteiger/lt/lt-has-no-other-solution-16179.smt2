(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6337434558626060532304791195201687514781951904296875p698 {+ 2854126791671323 698 (2.14843e+210)}
; Y = -1.590041978186639060055540539906360208988189697265625p551 {- 2657312833094298 551 (-1.17202e+166)}
; 1.6337434558626060532304791195201687514781951904296875p698 < -1.590041978186639060055540539906360208988189697265625p551 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010111001 #b1010001000111101000000101101100011111011111000011011)))
(assert (= y (fp #b1 #b11000100110 #b1001011100001100111111011011011110010100001010011010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

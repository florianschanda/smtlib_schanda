(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3954668611391951582589854297111742198467254638671875p64 {+ 1781024408463859 64 (2.57418e+019)}
; Y = -1.1376223633635766940841449468280188739299774169921875p757 {- 619796024362051 757 (-8.62392e+227)}
; 1.3954668611391951582589854297111742198467254638671875p64 = -1.1376223633635766940841449468280188739299774169921875p757 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000111111 #b0110010100111101010100001111001100111110100111110011)))
(assert (= y (fp #b1 #b11011110100 #b0010001100111011001110000001110111011000010001000011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

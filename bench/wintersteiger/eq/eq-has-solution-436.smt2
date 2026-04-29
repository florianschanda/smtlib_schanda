(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4678241276628776201818027402623556554317474365234375p-613 {+ 2106892567017463 -613 (4.31804e-185)}
; Y = 1.7433284297817432939581294704112224280834197998046875p1011 {+ 3347653639378955 1011 (3.82565e+304)}
; 1.4678241276628776201818027402623556554317474365234375p-613 = 1.7433284297817432939581294704112224280834197998046875p1011 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110011010 #b0111011111000011010100100111000010010111011111110111)))
(assert (= y (fp #b0 #b11111110010 #b1011111001001010110001011010000000011001100000001011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

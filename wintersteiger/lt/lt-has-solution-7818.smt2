(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7325705836166516160545825187000446021556854248046875p61 {- 3299204607398539 61 (-3.99504e+018)}
; Y = 1.7484321515355600862307028364739380776882171630859375p-924 {+ 3370638758767647 -924 (1.23291e-278)}
; -1.7325705836166516160545825187000446021556854248046875p61 < 1.7484321515355600862307028364739380776882171630859375p-924 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000111100 #b1011101110001001101111101110101010100101001010001011)))
(assert (= y (fp #b0 #b00001100011 #b1011111110011001001111111101111000011110110000011111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

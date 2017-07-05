(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5835352459927012347407071501947939395904541015625p-998 {+ 2628009116410280 -998 (5.91142e-301)}
; Y = -1.015609646665903031959032887243665754795074462890625p-326 {- 70299598907946 -326 (-7.42931e-099)}
; 1.5835352459927012347407071501947939395904541015625p-998 M -1.015609646665903031959032887243665754795074462890625p-326 == 1.5835352459927012347407071501947939395904541015625p-998
; [HW: 1.5835352459927012347407071501947939395904541015625p-998] 

; mpf : + 2628009116410280 -998
; mpfd: + 2628009116410280 -998 (5.91142e-301) class: Pos. norm. non-zero
; hwf : + 2628009116410280 -998 (5.91142e-301) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000011001 #b1001010101100010100100001101110110011010000110101000)))
(assert (= y (fp #b1 #b01010111001 #b0000001111111110111111100110100111101110101000101010)))
(assert (= r (fp #b0 #b00000011001 #b1001010101100010100100001101110110011010000110101000)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)

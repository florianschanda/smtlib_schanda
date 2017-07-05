(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.310595119846189593459939715103246271610260009765625p83 {+ 1398796066002394 83 (1.26753e+025)}
; Y = -1.37409025731592659980151438503526151180267333984375p680 {- 1684752743450940 680 (-6.89306e+204)}
; 1.310595119846189593459939715103246271610260009765625p83 + -1.37409025731592659980151438503526151180267333984375p680 == -1.3740902573159263777569094600039534270763397216796875p680
; [HW: -1.3740902573159263777569094600039534270763397216796875p680] 

; mpf : - 1684752743450939 680
; mpfd: - 1684752743450939 680 (-6.89306e+204) class: Neg. norm. non-zero
; hwf : - 1684752743450939 680 (-6.89306e+204) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001010010 #b0100111110000011001010010110101000001001010111011010)))
(assert (= y (fp #b1 #b11010100111 #b0101111111000100011000010000110011101100100100111100)))
(assert (= r (fp #b1 #b11010100111 #b0101111111000100011000010000110011101100100100111011)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.636513199917411842676528976880945265293121337890625p32 {+ 2866600609964458 32 (7.02877e+009)}
; Y = -1.5705799989293331986317525661434046924114227294921875p-492 {- 2569663870563203 -492 (-1.22829e-148)}
; 1.636513199917411842676528976880945265293121337890625p32 < -1.5705799989293331986317525661434046924114227294921875p-492 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000011111 #b1010001011110010100001110111000100011110000110101010)))
(assert (= y (fp #b1 #b01000010011 #b1001001000010001100001111110001100100111001110000011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

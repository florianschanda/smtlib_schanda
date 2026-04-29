(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5736780891379573699140337339485995471477508544921875p-664 {+ 2583616428472323 -664 (2.05588e-200)}
; Y = -1.04702297053886894673269125632941722869873046875p911 {- 211772632596704 911 (-1.81252e+274)}
; 1.5736780891379573699140337339485995471477508544921875p-664 < -1.04702297053886894673269125632941722869873046875p911 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101100111 #b1001001011011100100100010011011101000111100000000011)))
(assert (= y (fp #b1 #b11110001110 #b0000110000001001101100101000100010100000000011100000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)

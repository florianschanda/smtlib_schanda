(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.44738360771706009444415030884556472301483154296875p314 {- 2014836649006220 314 (-4.83061e+094)}
; Y = 1.7895710563355471389712647578562609851360321044921875p148 {+ 3555911915095299 148 (6.3854e+044)}
; -1.44738360771706009444415030884556472301483154296875p314 > 1.7895710563355471389712647578562609851360321044921875p148 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100111001 #b0111001010000111101110110110101111101001010010001100)))
(assert (= y (fp #b0 #b10010010011 #b1100101000100001010101000010100011010100010100000011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

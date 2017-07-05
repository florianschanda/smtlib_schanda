(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.493953981010202713974877042346633970737457275390625p592 {- 2224570964815722 592 (-2.42156e+178)}
; Y = -1.6440536757550001656369431657367385923862457275390625p-709 {- 2900559894136817 -709 (-6.10449e-214)}
; -1.493953981010202713974877042346633970737457275390625p592 < -1.6440536757550001656369431657367385923862457275390625p-709 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001001111 #b0111111001110011110001001010001000101010111101101010)))
(assert (= y (fp #b1 #b00100111010 #b1010010011100000101100111010001000111100011111110001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

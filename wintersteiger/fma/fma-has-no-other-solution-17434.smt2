(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0010715345242517937407455974607728421688079833984375p538 {+ 4825762484135 538 (9.00747e+161)}
; Y = 1.8252602850212145124686458075302653014659881591796875p83 {+ 3716641912105211 83 (1.76528e+025)}
; Z = 1.5736145525070792672295283409766852855682373046875p103 {+ 2583330284925176 103 (1.59583e+031)}
; 1.0010715345242517937407455974607728421688079833984375p538 x 1.8252602850212145124686458075302653014659881591796875p83 1.5736145525070792672295283409766852855682373046875p103 == 1.82721611443236042759963311254978179931640625p621
; [HW: 1.82721611443236042759963311254978179931640625p621] 

; mpf : + 3725450184712448 621
; mpfd: + 3725450184712448 621 (1.59007e+187) class: Pos. norm. non-zero
; hwf : + 3725450184712448 621 (1.59007e+187) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000011001 #b0000000001000110001110010101110110111100111110100111)))
(assert (= y (fp #b0 #b10001010010 #b1101001101000100010000100000111011011010100011111011)))
(assert (= z (fp #b0 #b10001100110 #b1001001011011000011001110011111110000111000011111000)))
(assert (= r (fp #b0 #b11001101100 #b1101001111000100011011110110111000110110000100000000)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)

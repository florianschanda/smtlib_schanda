(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1929294559530634334265641882666386663913726806640625p-950 {- 868877025939009 -950 (-1.25348e-286)}
; Y = 1.21052213968916344555282194050960242748260498046875p-232 {+ 948107429857356 -232 (1.75394e-070)}
; -1.1929294559530634334265641882666386663913726806640625p-950 > 1.21052213968916344555282194050960242748260498046875p-232 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001001001 #b0011000101100011110100110010011111000000111001000001)))
(assert (= y (fp #b0 #b01100010111 #b0011010111100100110001110110100100001100100001001100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

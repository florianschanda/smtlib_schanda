(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.383399789584759620453269235440529882907867431640625p455 {+ 1726679149507850 455 (1.28705e+137)}
; Y = 1.26940942575582749185514330747537314891815185546875p657 {+ 1213312189444044 657 (7.59117e+197)}
; 1.383399789584759620453269235440529882907867431640625p455 < 1.26940942575582749185514330747537314891815185546875p657 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111000110 #b0110001000100110011111010001010110001111010100001010)))
(assert (= y (fp #b0 #b11010010000 #b0100010011111000000001000010000011011010111111001100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

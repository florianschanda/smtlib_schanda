(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1941272571120882250994554851786233484745025634765625p605 {+ 874271442792457 605 (1.58562e+182)}
; Y = 1.915084489772903797444314477615989744663238525390625p-205 {+ 4121174167153770 -205 (3.72425e-062)}
; 1.1941272571120882250994554851786233484745025634765625p605 = 1.915084489772903797444314477615989744663238525390625p-205 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001011100 #b0011000110110010010100101110110010001111000000001001)))
(assert (= y (fp #b0 #b01100110010 #b1110101001000010111110100010010010100110110001101010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

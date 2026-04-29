(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6968122550804398684931584284640848636627197265625p-769 {- 3138163412327464 -769 (-5.46471e-232)}
; Y = 1.50698303201792871419684161082841455936431884765625p-1001 {+ 2283248594079108 -1001 (7.03206e-302)}
; -1.6968122550804398684931584284640848636627197265625p-769 = 1.50698303201792871419684161082841455936431884765625p-1001 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011111110 #b1011001001100010010010011011011100000101110000101000)))
(assert (= y (fp #b0 #b00000010110 #b1000000111001001101000111101011000100100110110000100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

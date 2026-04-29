(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0921656326723605534567695940495468676090240478515625p258 {+ 415077108959609 258 (5.05857e+077)}
; Y = -1.8702980588744664292022434892714954912662506103515625p-818 {- 3919474013648313 -818 (-1.06998e-246)}
; 1.0921656326723605534567695940495468676090240478515625p258 = -1.8702980588744664292022434892714954912662506103515625p-818 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100000001 #b0001011110011000001010101011101000100100100101111001)))
(assert (= y (fp #b1 #b00011001101 #b1101111011001011110110101000010010100011010110111001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1885978671249548543897844865568913519382476806640625p-676 {- 849369284106817 -676 (-3.79104e-204)}
; Y = 1.167818789618757069348475852166302502155303955078125p-522 {+ 755788638392802 -522 (8.50585e-158)}
; -1.1885978671249548543897844865568913519382476806640625p-676 = 1.167818789618757069348475852166302502155303955078125p-522 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101011011 #b0011000001000111111100110010011101100101101001000001)))
(assert (= y (fp #b0 #b00111110101 #b0010101011110110001011000001010100010001000111100010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

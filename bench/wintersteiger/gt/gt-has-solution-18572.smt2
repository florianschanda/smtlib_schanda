(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.943663020938894536726593287312425673007965087890625p-111 {+ 4249880429463722 -111 (7.48672e-034)}
; Y = 1.5225059422587376989355334444553591310977935791015625p820 {+ 2353157566855321 820 (1.06452e+247)}
; 1.943663020938894536726593287312425673007965087890625p-111 > 1.5225059422587376989355334444553591310977935791015625p820 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110010000 #b1111000110010011111001100101010101100000100010101010)))
(assert (= y (fp #b0 #b11100110011 #b1000010111000010111100110000110111110111100010011001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

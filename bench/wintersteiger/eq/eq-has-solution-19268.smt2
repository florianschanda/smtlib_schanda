(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.394209139332526437016213094466365873813629150390625p-948 {+ 1775360133004010 -948 (5.85992e-286)}
; Y = 1.431916255147439809292109202942810952663421630859375p296 {+ 1945177885737270 296 (1.82304e+089)}
; 1.394209139332526437016213094466365873813629150390625p-948 = 1.431916255147439809292109202942810952663421630859375p296 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001001011 #b0110010011101010111000111110000100110111101011101010)))
(assert (= y (fp #b0 #b10100100111 #b0110111010010010000100000100111001111000000100110110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.36367152420458470629682778962887823581695556640625p-440 {+ 1637830940893028 -440 (4.80299e-133)}
; Y = 1.68436283101425221531144416076131165027618408203125p766 {+ 3082096190742004 766 (6.53751e+230)}
; 1.36367152420458470629682778962887823581695556640625p-440 > 1.68436283101425221531144416076131165027618408203125p766 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001000111 #b0101110100011001100100111011011011110001111101100100)))
(assert (= y (fp #b0 #b11011111101 #b1010111100110010011001110000100111001101110111110100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9437453856926436568386407088837586343288421630859375p430 {+ 4250251367338015 430 (5.38936e+129)}
; Y = -1.1837940060320566448837098505464382469654083251953125p909 {- 827734617078901 909 (-5.12321e+273)}
; 1.9437453856926436568386407088837586343288421630859375p430 = -1.1837940060320566448837098505464382469654083251953125p909 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110101101 #b1111000110011001010011000010111101001101000000011111)))
(assert (= y (fp #b1 #b11110001100 #b0010111100001101000111111011110100011011110001110101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

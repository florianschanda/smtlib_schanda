(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.098112824551997324107333042775280773639678955078125p-848 {- 441860880092642 -848 (-5.85074e-256)}
; Y = 1.2279272645010792519570941294659860432147979736328125p-719 {+ 1026493143474637 -719 (4.45252e-217)}
; -1.098112824551997324107333042775280773639678955078125p-848 = 1.2279272645010792519570941294659860432147979736328125p-719 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010101111 #b0001100100011101111011000000110011000100110111100010)))
(assert (= y (fp #b0 #b00100110000 #b0011101001011001011100001111001011100110000111001101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)

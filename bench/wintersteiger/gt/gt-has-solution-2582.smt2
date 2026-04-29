(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.650811916757056518889612561906687915325164794921875p-966 {- 2930996305795358 -966 (-2.6468e-291)}
; Y = 1.3732845865090952397480350555269978940486907958984375p665 {+ 1681124324705511 665 (2.10236e+200)}
; -1.650811916757056518889612561906687915325164794921875p-966 > 1.3732845865090952397480350555269978940486907958984375p665 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000111001 #b1010011010011011100111000001101001010001100100011110)))
(assert (= y (fp #b0 #b11010011000 #b0101111110001111100101000010001100101000010011100111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)

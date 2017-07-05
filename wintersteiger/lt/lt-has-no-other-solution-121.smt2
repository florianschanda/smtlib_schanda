(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3737403430421941674666186372633092105388641357421875p676 {+ 1683176869658147 676 (4.30707e+203)}
; Y = 1.13437135736529892682256104308180510997772216796875p666 {+ 605154794959628 666 (3.47322e+200)}
; 1.3737403430421941674666186372633092105388641357421875p676 < 1.13437135736529892682256104308180510997772216796875p666 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010100011 #b0101111110101101011100100111011010001111111000100011)))
(assert (= y (fp #b0 #b11010011001 #b0010001001100110001010010100100101100111001100001100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

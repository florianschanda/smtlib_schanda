(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7373475876180481947130829212255775928497314453125p364 {+ 3320718320839176 364 (6.52838e+109)}
; Y = -1.821436119939722875216148167965002357959747314453125p-999 {- 3699419403669202 -999 (-3.39976e-301)}
; 1.7373475876180481947130829212255775928497314453125p364 > -1.821436119939722875216148167965002357959747314453125p-999 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101101011 #b1011110011000010110011111011111010011010101000001000)))
(assert (= y (fp #b1 #b00000011000 #b1101001001001001101000110011011011100100111011010010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

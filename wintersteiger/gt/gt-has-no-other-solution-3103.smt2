(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.79244614948658398390080037643201649188995361328125p-146 {- 3568860183538964 -146 (-2.0094e-044)}
; Y = -1.8688314947258495291038116192794404923915863037109375p-690 {- 3912869195895087 -690 (-3.63809e-208)}
; -1.79244614948658398390080037643201649188995361328125p-146 > -1.8688314947258495291038116192794404923915863037109375p-690 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101101101 #b1100101011011101110000000011011111100010110100010100)))
(assert (= y (fp #b1 #b00101001101 #b1101111001101011101111011010011110010101000100101111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.697707271174987653239440987817943096160888671875p105 {- 3142194206477360 105 (-6.88672e+031)}
; Y = 1.427919219077044221677397217717953026294708251953125p814 {+ 1927176835580050 814 (1.55998e+245)}
; -1.697707271174987653239440987817943096160888671875p105 < 1.427919219077044221677397217717953026294708251953125p814 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001101000 #b1011001010011100111100011001011111100000110000110000)))
(assert (= y (fp #b0 #b11100101101 #b0110110110001100000111010010101101000100000010010010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)

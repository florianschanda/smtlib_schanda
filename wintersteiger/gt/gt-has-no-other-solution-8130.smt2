(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0919148613613003373501442183624021708965301513671875p208 {- 413947735376563 208 (-4.49188e+062)}
; Y = 1.1050815065841863571449721348471939563751220703125p-301 {+ 473245033896072 -301 (2.71247e-091)}
; -1.0919148613613003373501442183624021708965301513671875p208 > 1.1050815065841863571449721348471939563751220703125p-301 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011001111 #b0001011110000111101110110111101110010000001010110011)))
(assert (= y (fp #b0 #b01011010010 #b0001101011100110100111110010001000110001100010001000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)

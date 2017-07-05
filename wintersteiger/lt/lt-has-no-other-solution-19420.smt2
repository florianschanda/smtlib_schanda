(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3223154733622914935864400831633247435092926025390625p-137 {- 1451579845730161 -137 (-7.58972e-042)}
; Y = -1.1404132324434865797257998565328307449817657470703125p-885 {- 632364981310373 -885 (-4.42095e-267)}
; -1.3223154733622914935864400831633247435092926025390625p-137 < -1.1404132324434865797257998565328307449817657470703125p-885 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101110110 #b0101001010000011010001000101000100010101111101110001)))
(assert (= y (fp #b1 #b00010001010 #b0010001111110010000111110010000101000101001110100101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

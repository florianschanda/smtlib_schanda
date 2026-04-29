(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2935699144300247809269421850331127643585205078125p-461 {- 1322121357234248 -461 (-2.17251e-139)}
; Y = -1.324768892188807445364773229812271893024444580078125p575 {- 1462629061843042 575 (-1.63828e+173)}
; -1.2935699144300247809269421850331127643585205078125p-461 > -1.324768892188807445364773229812271893024444580078125p575 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000110010 #b0100101100100111011001011101110110010001000001001000)))
(assert (= y (fp #b1 #b11000111110 #b0101001100100100000011011101101010110101100001100010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)

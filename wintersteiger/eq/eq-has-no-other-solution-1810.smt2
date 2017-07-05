(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.397811481566062941084283011150546371936798095703125p-892 {- 1791583640144626 -892 (-4.23343e-269)}
; Y = -1.781042605741746331915464907069690525531768798828125p-465 {- 3517503188179010 -465 (-1.8695e-140)}
; -1.397811481566062941084283011150546371936798095703125p-892 = -1.781042605741746331915464907069690525531768798828125p-465 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010000011 #b0110010111010110111110010010011101001100101011110010)))
(assert (= y (fp #b1 #b01000101110 #b1100011111110010011010001000000001110001100001000010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

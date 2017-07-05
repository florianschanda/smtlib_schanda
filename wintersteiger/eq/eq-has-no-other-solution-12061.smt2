(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.085064801884722651692527506384067237377166748046875p573 {+ 383097810070382 573 (3.35462e+172)}
; Y = 1.989514025417167264464524123468436300754547119140625p-783 {+ 4456374996146634 -783 (3.91075e-236)}
; 1.085064801884722651692527506384067237377166748046875p573 = 1.989514025417167264464524123468436300754547119140625p-783 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000111100 #b0001010111000110110011101000111000100010101101101110)))
(assert (= y (fp #b0 #b00011110000 #b1111110101010000110010101000101000011001100111001010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

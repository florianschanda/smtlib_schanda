(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.524382126731364195393325644545257091522216796875p-921 {- 2361607150547120 -921 (-8.59939e-278)}
; Y = -1.028598251953041664563670565257780253887176513671875p-783 {- 128795076839166 -783 (-2.0219e-236)}
; -1.524382126731364195393325644545257091522216796875p-921 < -1.028598251953041664563670565257780253887176513671875p-783 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001100110 #b1000011000111101111010000011010011101011000010110000)))
(assert (= y (fp #b1 #b00011110000 #b0000011101010010001101110000110011011100011011111110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)

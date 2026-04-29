(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.138446962950860896768290331237949430942535400390625p545 {+ 623509690756074 545 (1.31117e+164)}
; Y = 1.603623585002926343889839699841104447841644287109375p423 {+ 2718478952491222 423 (3.47369e+127)}
; 1.138446962950860896768290331237949430942535400390625p545 > 1.603623585002926343889839699841104447841644287109375p423 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000100000 #b0010001101110001010000101001101000011010101111101010)))
(assert (= y (fp #b0 #b10110100110 #b1001101010000111000100110100010010101110100011010110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

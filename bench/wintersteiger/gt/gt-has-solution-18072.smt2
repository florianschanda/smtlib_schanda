(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.560294840254488502040430830675177276134490966796875p74 {+ 2523343633787726 74 (2.94731e+022)}
; Y = -1.563481050777516312422221744782291352748870849609375p628 {- 2537693050311958 628 (-1.74153e+189)}
; 1.560294840254488502040430830675177276134490966796875p74 > -1.563481050777516312422221744782291352748870849609375p628 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001001001 #b1000111101101111011110111000111100000010101101001110)))
(assert (= y (fp #b1 #b11001110011 #b1001000001000000010010110100110100000001010100010110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)

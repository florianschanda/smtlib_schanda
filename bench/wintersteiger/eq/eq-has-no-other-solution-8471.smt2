(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7063196208458626390580548104480840265750885009765625p16 {- 3180980781245897 16 (-111825)}
; Y = -1.726934652933185265766269367304630577564239501953125p-886 {- 3273822632072594 -886 (-3.34734e-267)}
; -1.7063196208458626390580548104480840265750885009765625p16 = -1.726934652933185265766269367304630577564239501953125p-886 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000001111 #b1011010011010001010111001101100000001110010111001001)))
(assert (= y (fp #b1 #b00010001001 #b1011101000011000011000111011000010101101010110010010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

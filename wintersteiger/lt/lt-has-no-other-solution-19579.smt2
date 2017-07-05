(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7888033155485036918008745487895794212818145751953125p-999 {+ 3552454317972853 -999 (3.33885e-301)}
; Y = 1.6078873759519736186263116906047798693180084228515625p290 {+ 2737681359820537 290 (3.19856e+087)}
; 1.7888033155485036918008745487895794212818145751953125p-999 < 1.6078873759519736186263116906047798693180084228515625p290 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000011000 #b1100100111101111000000111001101101000001110101110101)))
(assert (= y (fp #b0 #b10100100001 #b1001101110011110100000011100111101011101011011111001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

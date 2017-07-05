(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0422635727802094240956876092241145670413970947265625p-777 {- 190338210624297 -777 (-1.31121e-234)}
; -1.0422635727802094240956876092241145670413970947265625p-777 | == 1.0422635727802094240956876092241145670413970947265625p-777
; [HW: 1.0422635727802094240956876092241145670413970947265625p-777] 

; mpf : + 190338210624297 -777
; mpfd: + 190338210624297 -777 (1.31121e-234) class: Pos. norm. non-zero
; hwf : + 190338210624297 -777 (1.31121e-234) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011110110 #b0000101011010001110010010001011011100111001100101001)))
(assert (= r (fp #b0 #b00011110110 #b0000101011010001110010010001011011100111001100101001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

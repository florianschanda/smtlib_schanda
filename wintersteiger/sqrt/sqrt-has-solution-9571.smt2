(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3481307156897823773533673374913632869720458984375p575 {+ 1567841361456728 575 (1.66717e+173)}
; 1.3481307156897823773533673374913632869720458984375p575 S == 1.642029668239756379222171744913794100284576416015625p287
; [HW: 1.642029668239756379222171744913794100284576416015625p287] 

; mpf : + 2891444574645370 287
; mpfd: + 2891444574645370 287 (4.0831e+086) class: Pos. norm. non-zero
; hwf : + 2891444574645370 287 (4.0831e+086) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000111110 #b0101100100011111000110000011011010011110111001011000)))
(assert (= r (fp #b0 #b10100011110 #b1010010001011100000011100110110000100110110001111010)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)

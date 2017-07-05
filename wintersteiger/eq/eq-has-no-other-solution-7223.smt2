(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7977544272849275142078795397537760436534881591796875p-794 {+ 3592766541453563 -794 (1.7255e-239)}
; Y = 1.8932012541409231065614449107670225203037261962890625p-510 {+ 4022620835315921 -510 (5.64806e-154)}
; 1.7977544272849275142078795397537760436534881591796875p-794 = 1.8932012541409231065614449107670225203037261962890625p-510 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011100101 #b1100110000111001101000100101011101101101100011111011)))
(assert (= y (fp #b0 #b01000000001 #b1110010010101000110101100101111101001000000011010001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

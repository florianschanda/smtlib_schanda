(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.43191837671887700622619377099908888339996337890625 790 {- 1945187440445604 790 (-9.32427e+237)}
; -1.43191837671887700622619377099908888339996337890625 790 I == -1.43191837671887700622619377099908888339996337890625 790
; [HW: -1.43191837671887700622619377099908888339996337890625 790] 

; mpf : - 1945187440445604 790
; mpfd: - 1945187440445604 790 (-9.32427e+237) class: Neg. norm. non-zero
; hwf : - 1945187440445604 790 (-9.32427e+237) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100010101 #b0110111010010010001100111110011010001100100010100100)))
(assert (= r (fp #b1 #b11100010101 #b0110111010010010001100111110011010001100100010100100)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)

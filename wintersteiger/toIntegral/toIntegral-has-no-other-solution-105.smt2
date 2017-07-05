(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3011537579845586787286038088495843112468719482421875 919 {- 1356275952240483 919 (-5.76627e+276)}
; -1.3011537579845586787286038088495843112468719482421875 919 I == -1.3011537579845586787286038088495843112468719482421875 919
; [HW: -1.3011537579845586787286038088495843112468719482421875 919] 

; mpf : - 1356275952240483 919
; mpfd: - 1356275952240483 919 (-5.76627e+276) class: Neg. norm. non-zero
; hwf : - 1356275952240483 919 (-5.76627e+276) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110010110 #b0100110100011000011010011010010110011100011101100011)))
(assert (= r (fp #b1 #b11110010110 #b0100110100011000011010011010010110011100011101100011)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)

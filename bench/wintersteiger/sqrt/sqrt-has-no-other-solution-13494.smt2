(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5214184983635334891260981748928315937519073486328125p685 {+ 2348260154934093 685 (2.44228e+206)}
; 1.5214184983635334891260981748928315937519073486328125p685 S == 1.7443729523032243111657635381561703979969024658203125p342
; [HW: 1.7443729523032243111657635381561703979969024658203125p342] 

; mpf : + 3352357750617477 342
; mpfd: + 3352357750617477 342 (1.56278e+103) class: Pos. norm. non-zero
; hwf : + 3352357750617477 342 (1.56278e+103) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010101100 #b1000010101111011101011101100011000000000001101001101)))
(assert (= r (fp #b0 #b10101010101 #b1011111010001111001110011100111000101011010110000101)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)

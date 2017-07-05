(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9454737048420962519656995937111787497997283935546875p819 {+ 4258035024815467 819 (6.8013e+246)}
; Y = 1.517029551315964841506911398028023540973663330078125p999 {+ 2328494094646114 999 (8.12755e+300)}
; 1.9454737048420962519656995937111787497997283935546875p819 + 1.517029551315964841506911398028023540973663330078125p999 == 1.517029551315964841506911398028023540973663330078125p999
; [HW: 1.517029551315964841506911398028023540973663330078125p999] 

; mpf : + 2328494094646114 999
; mpfd: + 2328494094646114 999 (8.12755e+300) class: Pos. norm. non-zero
; hwf : + 2328494094646114 999 (8.12755e+300) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100110010 #b1111001000001010100100001001000110000110010101101011)))
(assert (= y (fp #b0 #b11111100110 #b1000010001011100000011000111010111110111101101100010)))
(assert (= r (fp #b0 #b11111100110 #b1000010001011100000011000111010111110111101101100010)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)

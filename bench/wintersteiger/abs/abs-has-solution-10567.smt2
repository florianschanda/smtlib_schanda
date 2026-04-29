(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.216917304075164185661606097710318863391876220703125p146 {- 976908689803122 146 (-1.08553e+044)}
; -1.216917304075164185661606097710318863391876220703125p146 | == 1.216917304075164185661606097710318863391876220703125p146
; [HW: 1.216917304075164185661606097710318863391876220703125p146] 

; mpf : + 976908689803122 146
; mpfd: + 976908689803122 146 (1.08553e+044) class: Pos. norm. non-zero
; hwf : + 976908689803122 146 (1.08553e+044) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010010001 #b0011011110000111111001000111011011110000011101110010)))
(assert (= r (fp #b0 #b10010010001 #b0011011110000111111001000111011011110000011101110010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.36198825750123742039932039915584027767181396484375 221 {+ 1630250181595068 221 (4.58989e+066)}
; 1.36198825750123742039932039915584027767181396484375 221 I == 1.36198825750123742039932039915584027767181396484375 221
; [HW: 1.36198825750123742039932039915584027767181396484375 221] 

; mpf : + 1630250181595068 221
; mpfd: + 1630250181595068 221 (4.58989e+066) class: Pos. norm. non-zero
; hwf : + 1630250181595068 221 (4.58989e+066) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011011100 #b0101110010101011010000110010111110000000111110111100)))
(assert (= r (fp #b0 #b10011011100 #b0101110010101011010000110010111110000000111110111100)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)

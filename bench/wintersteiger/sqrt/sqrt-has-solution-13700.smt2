(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.92338458045757842995726605295203626155853271484375p269 {+ 4158554452468412 269 (1.82446e+081)}
; 1.92338458045757842995726605295203626155853271484375p269 S == 1.961318220206796691940098753548227250576019287109375p134
; [HW: 1.961318220206796691940098753548227250576019287109375p134] 

; mpf : + 4329392378307798 134
; mpfd: + 4329392378307798 134 (4.27137e+040) class: Pos. norm. non-zero
; hwf : + 4329392378307798 134 (4.27137e+040) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100001100 #b1110110001100010111011101000111010110010001010111100)))
(assert (= r (fp #b0 #b10010000101 #b1111011000011000111100110110110011010110010011010110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)

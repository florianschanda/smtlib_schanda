(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.128301888104956685054958143155090510845184326171875p713 {+ 577820335460414 713 (4.86197e+214)}
; 1.128301888104956685054958143155090510845184326171875p713 S == 1.502199645922576376477763915318064391613006591796875p356
; [HW: 1.502199645922576376477763915318064391613006591796875p356] 

; mpf : + 2261706138242510 356
; mpfd: + 2261706138242510 356 (2.20499e+107) class: Pos. norm. non-zero
; hwf : + 2261706138242510 356 (2.20499e+107) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001000 #b0010000011011000011001000111110101101101000000111110)))
(assert (= r (fp #b0 #b10101100011 #b1000000010010000001001111110111101001100110111001110)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)

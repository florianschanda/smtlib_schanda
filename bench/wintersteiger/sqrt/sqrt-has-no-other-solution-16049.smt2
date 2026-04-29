(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.95503991053572523384218584396876394748687744140625p27 {+ 4301117385212644 27 (2.62401e+008)}
; 1.95503991053572523384218584396876394748687744140625p27 S == 1.9773921768509781227152188876061700284481048583984375p13
; [HW: 1.9773921768509781227152188876061700284481048583984375p13] 

; mpf : + 4401783043460903 13
; mpfd: + 4401783043460903 13 (16198.8) class: Pos. norm. non-zero
; hwf : + 4401783043460903 13 (16198.8) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000011010 #b1111010001111101011111101101111000100000001011100100)))
(assert (= r (fp #b0 #b10000001100 #b1111101000110110010111111010101011110000111100100111)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

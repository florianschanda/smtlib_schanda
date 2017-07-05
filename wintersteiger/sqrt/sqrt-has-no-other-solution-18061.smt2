(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6620687066274946186439365192200057208538055419921875p438 {+ 2981692380461251 438 (1.17974e+132)}
; 1.6620687066274946186439365192200057208538055419921875p438 S == 1.28921243657804307503056406858377158641815185546875p219
; [HW: 1.28921243657804307503056406858377158641815185546875p219] 

; mpf : + 1302497021603788 219
; mpfd: + 1302497021603788 219 (1.08616e+066) class: Pos. norm. non-zero
; hwf : + 1302497021603788 219 (1.08616e+066) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110110101 #b1010100101111101010101011011001010101011100011000011)))
(assert (= r (fp #b0 #b10011011010 #b0100101000001001110100111000010010110010111111001100)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)

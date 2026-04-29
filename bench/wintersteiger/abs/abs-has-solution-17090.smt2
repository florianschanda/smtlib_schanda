(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6979273308120799157450164784677326679229736328125p196 {+ 3143185266976968 196 (1.70529e+059)}
; 1.6979273308120799157450164784677326679229736328125p196 | == 1.6979273308120799157450164784677326679229736328125p196
; [HW: 1.6979273308120799157450164784677326679229736328125p196] 

; mpf : + 3143185266976968 196
; mpfd: + 3143185266976968 196 (1.70529e+059) class: Pos. norm. non-zero
; hwf : + 3143185266976968 196 (1.70529e+059) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011000011 #b1011001010101011010111011001010011010010100011001000)))
(assert (= r (fp #b0 #b10011000011 #b1011001010101011010111011001010011010010100011001000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

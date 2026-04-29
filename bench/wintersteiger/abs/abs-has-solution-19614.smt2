(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.11825761528758160778806995949707925319671630859375p-282 {+ 532584952142876 -282 (1.43907e-085)}
; 1.11825761528758160778806995949707925319671630859375p-282 | == 1.11825761528758160778806995949707925319671630859375p-282
; [HW: 1.11825761528758160778806995949707925319671630859375p-282] 

; mpf : + 532584952142876 -282
; mpfd: + 532584952142876 -282 (1.43907e-085) class: Pos. norm. non-zero
; hwf : + 532584952142876 -282 (1.43907e-085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011100101 #b0001111001000110001000011000111000101001110000011100)))
(assert (= r (fp #b0 #b01011100101 #b0001111001000110001000011000111000101001110000011100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

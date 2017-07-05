(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4557075822526008845869682772899977862834930419921875p-632 {- 2052324497622723 -632 (-8.16802e-191)}
; -1.4557075822526008845869682772899977862834930419921875p-632 | == 1.4557075822526008845869682772899977862834930419921875p-632
; [HW: 1.4557075822526008845869682772899977862834930419921875p-632] 

; mpf : + 2052324497622723 -632
; mpfd: + 2052324497622723 -632 (8.16802e-191) class: Pos. norm. non-zero
; hwf : + 2052324497622723 -632 (8.16802e-191) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110000111 #b0111010010101001010000001000101001010000011011000011)))
(assert (= r (fp #b0 #b00110000111 #b0111010010101001010000001000101001010000011011000011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

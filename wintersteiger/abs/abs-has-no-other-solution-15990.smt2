(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.674720524760054285451360556180588901042938232421875p-218 {+ 3038671103888606 -218 (3.97561e-066)}
; 1.674720524760054285451360556180588901042938232421875p-218 | == 1.674720524760054285451360556180588901042938232421875p-218
; [HW: 1.674720524760054285451360556180588901042938232421875p-218] 

; mpf : + 3038671103888606 -218
; mpfd: + 3038671103888606 -218 (3.97561e-066) class: Pos. norm. non-zero
; hwf : + 3038671103888606 -218 (3.97561e-066) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100100101 #b1010110010111010011110111111101111001000110011011110)))
(assert (= r (fp #b0 #b01100100101 #b1010110010111010011110111111101111001000110011011110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

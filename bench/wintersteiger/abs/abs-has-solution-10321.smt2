(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7227844304650925533195504613104276359081268310546875p-827 {- 3255131691711787 -827 (-1.92497e-249)}
; -1.7227844304650925533195504613104276359081268310546875p-827 | == 1.7227844304650925533195504613104276359081268310546875p-827
; [HW: 1.7227844304650925533195504613104276359081268310546875p-827] 

; mpf : + 3255131691711787 -827
; mpfd: + 3255131691711787 -827 (1.92497e-249) class: Pos. norm. non-zero
; hwf : + 3255131691711787 -827 (1.92497e-249) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011000100 #b1011100100001000011001101000001011100111110100101011)))
(assert (= r (fp #b0 #b00011000100 #b1011100100001000011001101000001011100111110100101011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.32405651532797374869687700993381440639495849609375p-8 {+ 1459420801678044 -8 (0.0051721)}
; 1.32405651532797374869687700993381440639495849609375p-8 | == 1.32405651532797374869687700993381440639495849609375p-8
; [HW: 1.32405651532797374869687700993381440639495849609375p-8] 

; mpf : + 1459420801678044 -8
; mpfd: + 1459420801678044 -8 (0.0051721) class: Pos. norm. non-zero
; hwf : + 1459420801678044 -8 (0.0051721) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111110111 #b0101001011110101010111100010011101100011101011011100)))
(assert (= r (fp #b0 #b01111110111 #b0101001011110101010111100010011101100011101011011100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1495057640490162764734805023181252181529998779296875p463 {+ 673314103260891 463 (2.73778e+139)}
; 1.1495057640490162764734805023181252181529998779296875p463 | == 1.1495057640490162764734805023181252181529998779296875p463
; [HW: 1.1495057640490162764734805023181252181529998779296875p463] 

; mpf : + 673314103260891 463
; mpfd: + 673314103260891 463 (2.73778e+139) class: Pos. norm. non-zero
; hwf : + 673314103260891 463 (2.73778e+139) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111001110 #b0010011001000110000000100111111100100111011011011011)))
(assert (= r (fp #b0 #b10111001110 #b0010011001000110000000100111111100100111011011011011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8559099264939444839939142184448428452014923095703125p769 {- 3854675626020837 769 (-5.76267e+231)}
; -1.8559099264939444839939142184448428452014923095703125p769 | == 1.8559099264939444839939142184448428452014923095703125p769
; [HW: 1.8559099264939444839939142184448428452014923095703125p769] 

; mpf : + 3854675626020837 769
; mpfd: + 3854675626020837 769 (5.76267e+231) class: Pos. norm. non-zero
; hwf : + 3854675626020837 769 (5.76267e+231) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100000000 #b1101101100011100111010011011011010011100111111100101)))
(assert (= r (fp #b0 #b11100000000 #b1101101100011100111010011011011010011100111111100101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.12738547204064598616923831286840140819549560546875p135 {- 573693164414668 135 (-4.91046e+040)}
; -1.12738547204064598616923831286840140819549560546875p135 | == 1.12738547204064598616923831286840140819549560546875p135
; [HW: 1.12738547204064598616923831286840140819549560546875p135] 

; mpf : + 573693164414668 135
; mpfd: + 573693164414668 135 (4.91046e+040) class: Pos. norm. non-zero
; hwf : + 573693164414668 135 (4.91046e+040) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010000110 #b0010000010011100010101011001010001100110011011001100)))
(assert (= r (fp #b0 #b10010000110 #b0010000010011100010101011001010001100110011011001100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

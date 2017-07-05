(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9081293133261747474449521178030408918857574462890625p733 {- 4089850837099985 733 (-8.62173e+220)}
; -1.9081293133261747474449521178030408918857574462890625p733 | == 1.9081293133261747474449521178030408918857574462890625p733
; [HW: 1.9081293133261747474449521178030408918857574462890625p733] 

; mpf : + 4089850837099985 733
; mpfd: + 4089850837099985 733 (8.62173e+220) class: Pos. norm. non-zero
; hwf : + 4089850837099985 733 (8.62173e+220) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011011100 #b1110100001111011001010011010010101000110010111010001)))
(assert (= r (fp #b0 #b11011011100 #b1110100001111011001010011010010101000110010111010001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6933368404076512003797461147769354283809661865234375p3 {- 3122511536102135 3 (-13.5467)}
; -1.6933368404076512003797461147769354283809661865234375p3 | == 1.6933368404076512003797461147769354283809661865234375p3
; [HW: 1.6933368404076512003797461147769354283809661865234375p3] 

; mpf : + 3122511536102135 3
; mpfd: + 3122511536102135 3 (13.5467) class: Pos. norm. non-zero
; hwf : + 3122511536102135 3 (13.5467) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000000010 #b1011000101111110100001011110111010101001101011110111)))
(assert (= r (fp #b0 #b10000000010 #b1011000101111110100001011110111010101001101011110111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

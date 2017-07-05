(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.012078164670075608455590554513037204742431640625p909 {- 54395217907472 909 (-4.38006e+273)}
; -1.012078164670075608455590554513037204742431640625p909 | == 1.012078164670075608455590554513037204742431640625p909
; [HW: 1.012078164670075608455590554513037204742431640625p909] 

; mpf : + 54395217907472 909
; mpfd: + 54395217907472 909 (4.38006e+273) class: Pos. norm. non-zero
; hwf : + 54395217907472 909 (4.38006e+273) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110001100 #b0000001100010111100011011111101001000000111100010000)))
(assert (= r (fp #b0 #b11110001100 #b0000001100010111100011011111101001000000111100010000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

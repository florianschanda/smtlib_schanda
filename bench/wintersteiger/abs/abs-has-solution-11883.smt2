(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.552274754048771132630690772202797234058380126953125p-803 {+ 2487224376540178 -803 (2.90993e-242)}
; 1.552274754048771132630690772202797234058380126953125p-803 | == 1.552274754048771132630690772202797234058380126953125p-803
; [HW: 1.552274754048771132630690772202797234058380126953125p-803] 

; mpf : + 2487224376540178 -803
; mpfd: + 2487224376540178 -803 (2.90993e-242) class: Pos. norm. non-zero
; hwf : + 2487224376540178 -803 (2.90993e-242) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011011100 #b1000110101100001111000001101011100001011110000010010)))
(assert (= r (fp #b0 #b00011011100 #b1000110101100001111000001101011100001011110000010010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

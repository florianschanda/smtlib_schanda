(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6261047211852834859513450282975099980831146240234375p-688 {- 2819724989024951 -688 (-1.26623e-207)}
; -1.6261047211852834859513450282975099980831146240234375p-688 | == 1.6261047211852834859513450282975099980831146240234375p-688
; [HW: 1.6261047211852834859513450282975099980831146240234375p-688] 

; mpf : + 2819724989024951 -688
; mpfd: + 2819724989024951 -688 (1.26623e-207) class: Pos. norm. non-zero
; hwf : + 2819724989024951 -688 (1.26623e-207) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101001111 #b1010000001001000011001100010010101011100101010110111)))
(assert (= r (fp #b0 #b00101001111 #b1010000001001000011001100010010101011100101010110111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

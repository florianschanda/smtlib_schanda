(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4373726065584466748958902826416306197643280029296875p-993 {+ 1969751107918683 -993 (1.71705e-299)}
; 1.4373726065584466748958902826416306197643280029296875p-993 | == 1.4373726065584466748958902826416306197643280029296875p-993
; [HW: 1.4373726065584466748958902826416306197643280029296875p-993] 

; mpf : + 1969751107918683 -993
; mpfd: + 1969751107918683 -993 (1.71705e-299) class: Pos. norm. non-zero
; hwf : + 1969751107918683 -993 (1.71705e-299) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000011110 #b0110111111110111101001101011000101010101101101011011)))
(assert (= r (fp #b0 #b00000011110 #b0110111111110111101001101011000101010101101101011011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

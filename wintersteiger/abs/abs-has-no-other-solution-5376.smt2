(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8509843226329170118305000869440846145153045654296875p-592 {+ 3832492678307739 -592 (1.14195e-178)}
; 1.8509843226329170118305000869440846145153045654296875p-592 | == 1.8509843226329170118305000869440846145153045654296875p-592
; [HW: 1.8509843226329170118305000869440846145153045654296875p-592] 

; mpf : + 3832492678307739 -592
; mpfd: + 3832492678307739 -592 (1.14195e-178) class: Pos. norm. non-zero
; hwf : + 3832492678307739 -592 (1.14195e-178) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110101111 #b1101100111011010000110111100101100011101111110011011)))
(assert (= r (fp #b0 #b00110101111 #b1101100111011010000110111100101100011101111110011011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

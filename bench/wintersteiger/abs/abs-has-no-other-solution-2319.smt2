(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8119416890268247311013283251668326556682586669921875p699 {+ 3656660288147779 699 (4.76553e+210)}
; 1.8119416890268247311013283251668326556682586669921875p699 | == 1.8119416890268247311013283251668326556682586669921875p699
; [HW: 1.8119416890268247311013283251668326556682586669921875p699] 

; mpf : + 3656660288147779 699
; mpfd: + 3656660288147779 699 (4.76553e+210) class: Pos. norm. non-zero
; hwf : + 3656660288147779 699 (4.76553e+210) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010111010 #b1100111111011011011010010001100010100001000101000011)))
(assert (= r (fp #b0 #b11010111010 #b1100111111011011011010010001100010100001000101000011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

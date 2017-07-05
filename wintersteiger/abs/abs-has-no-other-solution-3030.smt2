(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.49060001012602416636809721239842474460601806640625p-844 {- 2209466022791524 -844 (-1.27071e-254)}
; -1.49060001012602416636809721239842474460601806640625p-844 | == 1.49060001012602416636809721239842474460601806640625p-844
; [HW: 1.49060001012602416636809721239842474460601806640625p-844] 

; mpf : + 2209466022791524 -844
; mpfd: + 2209466022791524 -844 (1.27071e-254) class: Pos. norm. non-zero
; hwf : + 2209466022791524 -844 (1.27071e-254) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010110011 #b0111110110010111111101100101011011101000100101100100)))
(assert (= r (fp #b0 #b00010110011 #b0111110110010111111101100101011011101000100101100100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

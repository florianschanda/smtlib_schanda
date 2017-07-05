(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5100960841062087691710758008412085473537445068359375p-223 {- 2297268534303871 -223 (-1.12025e-067)}
; -1.5100960841062087691710758008412085473537445068359375p-223 | == 1.5100960841062087691710758008412085473537445068359375p-223
; [HW: 1.5100960841062087691710758008412085473537445068359375p-223] 

; mpf : + 2297268534303871 -223
; mpfd: + 2297268534303871 -223 (1.12025e-067) class: Pos. norm. non-zero
; hwf : + 2297268534303871 -223 (1.12025e-067) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100100000 #b1000001010010101101010000010111100001101110001111111)))
(assert (= r (fp #b0 #b01100100000 #b1000001010010101101010000010111100001101110001111111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

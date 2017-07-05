(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.902372406918785952001371697406284511089324951171875p814 {- 4063924035548862 814 (-2.07832e+245)}
; -1.902372406918785952001371697406284511089324951171875p814 | == 1.902372406918785952001371697406284511089324951171875p814
; [HW: 1.902372406918785952001371697406284511089324951171875p814] 

; mpf : + 4063924035548862 814
; mpfd: + 4063924035548862 814 (2.07832e+245) class: Pos. norm. non-zero
; hwf : + 4063924035548862 814 (2.07832e+245) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100101101 #b1110011100000001111000001100100010000111011010111110)))
(assert (= r (fp #b0 #b11100101101 #b1110011100000001111000001100100010000111011010111110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)

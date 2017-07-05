(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.55325969373620598190655073267407715320587158203125p879 {+ 2491660150549492 879 (6.26052e+264)}
; 1.55325969373620598190655073267407715320587158203125p879 S == 1.7625320954446224153144839874585159122943878173828125p439
; [HW: 1.7625320954446224153144839874585159122943878173828125p439] 

; mpf : + 3434139260902445 439
; mpfd: + 3434139260902445 439 (2.5021e+132) class: Pos. norm. non-zero
; hwf : + 3434139260902445 439 (2.5021e+132) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101101110 #b1000110110100010011011010110001011001010101111110100)))
(assert (= r (fp #b0 #b10110110110 #b1100001100110101010011011010110000010101110000101101)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)

(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.246400619350006788721429984434507787227630615234375p-90 {+ 1109689737488550 -90 (1.00683e-027)}
; 1.246400619350006788721429984434507787227630615234375p-90 S == 1.116423136337655108718536212109029293060302734375p-45
; [HW: 1.116423136337655108718536212109029293060302734375p-45] 

; mpf : + 524323193427568 -45
; mpfd: + 524323193427568 -45 (3.17307e-014) class: Pos. norm. non-zero
; hwf : + 524323193427568 -45 (3.17307e-014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110100101 #b0011111100010100000111000110100111010010100010100110)))
(assert (= r (fp #b0 #b01111010010 #b0001110111001101111010000001101100010001011001110000)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)

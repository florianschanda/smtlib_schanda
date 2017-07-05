(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.691907655313003910890756742446683347225189208984375p16 {+ 3116075058642438 16 (110881)}
; 1.691907655313003910890756742446683347225189208984375p16 S == 1.30073350664653997199593504774384200572967529296875p8
; [HW: 1.30073350664653997199593504774384200572967529296875p8] 

; mpf : + 1354383308471180 8
; mpfd: + 1354383308471180 8 (332.988) class: Pos. norm. non-zero
; hwf : + 1354383308471180 8 (332.988) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000001111 #b1011000100100000110111000010111101101011111000000110)))
(assert (= r (fp #b0 #b10000000111 #b0100110011111100110111101111111111011011101110001100)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)

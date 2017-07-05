(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8639027270424548543559239988098852336406707763671875p710 {+ 3890671999592755 710 (1.00397e+214)}
; 1.8639027270424548543559239988098852336406707763671875p710 S == 1.3652482290933229958085348698659799993038177490234375p355
; [HW: 1.3652482290933229958085348698659799993038177490234375p355] 

; mpf : + 1644931788442423 355
; mpfd: + 1644931788442423 355 (1.00198e+107) class: Pos. norm. non-zero
; hwf : + 1644931788442423 355 (1.00198e+107) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011000101 #b1101110100101000101110101010011110010010100100110011)))
(assert (= r (fp #b0 #b10101100010 #b0101110110000000111010000110111011100000101100110111)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

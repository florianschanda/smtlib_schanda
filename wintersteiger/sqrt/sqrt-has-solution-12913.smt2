(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.63806344041185614202049691812135279178619384765625p712 {+ 2873582272477572 712 (3.52929e+214)}
; 1.63806344041185614202049691812135279178619384765625p712 S == 1.27986852465862899208559610997326672077178955078125p356
; [HW: 1.27986852465862899208559610997326672077178955078125p356] 

; mpf : + 1260415783365332 356
; mpfd: + 1260415783365332 356 (1.87864e+107) class: Pos. norm. non-zero
; hwf : + 1260415783365332 356 (1.87864e+107) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011000111 #b1010001101011000001000000010100101010111100110000100)))
(assert (= r (fp #b0 #b10101100011 #b0100011110100101011101101011000010010110101011010100)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)

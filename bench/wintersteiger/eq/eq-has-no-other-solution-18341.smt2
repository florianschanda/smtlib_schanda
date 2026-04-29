(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.35836625933532939569658992695622146129608154296875p-726 {+ 1613938152004748 -726 (3.84804e-219)}
; Y = 1.2289107852890632788245284245931543409824371337890625p-793 {+ 1030922527328913 -793 (2.35903e-239)}
; 1.35836625933532939569658992695622146129608154296875p-726 = 1.2289107852890632788245284245931543409824371337890625p-793 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100101001 #b0101101110111101111001000010001111010101110010001100)))
(assert (= y (fp #b0 #b00011100110 #b0011101010011001111001011011000010000100101010010001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)

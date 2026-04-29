(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.197678810528449933059391696588136255741119384765625p214 {- 890266217434970 214 (-3.15326e+064)}
; Y = 1.6713632498128514480839612588169984519481658935546875p-552 {+ 3023551281687403 -552 (1.13374e-166)}
; -1.197678810528449933059391696588136255741119384765625p214 < 1.6713632498128514480839612588169984519481658935546875p-552 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011010101 #b0011001010011011000101000001101001010100111101011010)))
(assert (= y (fp #b0 #b00111010111 #b1010101111011110011101100100000110101110101101101011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)

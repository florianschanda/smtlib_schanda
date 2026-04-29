(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.390990237911147620053498030756600201129913330078125p-758 {+ 1760863489762146 -758 (9.1746e-229)}
; 1.390990237911147620053498030756600201129913330078125p-758 S == 1.17940249190475565654878664645366370677947998046875p-379
; [HW: 1.17940249190475565654878664645366370677947998046875p-379] 

; mpf : + 807956995691596 -379
; mpfd: + 807956995691596 -379 (9.57842e-115) class: Pos. norm. non-zero
; hwf : + 807956995691596 -379 (9.57842e-115) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100001001 #b0110010000010111111011111010110011100010001101100010)))
(assert (= r (fp #b0 #b01010000100 #b0010110111101101010100100101101110001101010001001100)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

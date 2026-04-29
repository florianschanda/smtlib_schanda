(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.44843595917138490136721884482540190219879150390625p-670 {+ 2019576018623780 -670 (2.95667e-202)}
; 1.44843595917138490136721884482540190219879150390625p-670 S == 1.203509850051666330017496875370852649211883544921875p-335
; [HW: 1.203509850051666330017496875370852649211883544921875p-335] 

; mpf : + 916526884858910 -335
; mpfd: + 916526884858910 -335 (1.7195e-101) class: Pos. norm. non-zero
; hwf : + 916526884858910 -335 (1.7195e-101) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101100001 #b0111001011001100101100101111001011111101110100100100)))
(assert (= r (fp #b0 #b01010110000 #b0011010000011001001110001011011001100010110000011110)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)

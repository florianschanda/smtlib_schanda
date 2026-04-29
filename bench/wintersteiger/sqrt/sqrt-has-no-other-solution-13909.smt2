(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.825468973728588739646738758892752230167388916015625p180 {+ 3717581762489978 180 (2.79752e+054)}
; 1.825468973728588739646738758892752230167388916015625p180 S == 1.35109917242539534498746434110216796398162841796875p90
; [HW: 1.35109917242539534498746434110216796398162841796875p90] 

; mpf : + 1581210102105100 90
; mpfd: + 1581210102105100 90 (1.67258e+027) class: Pos. norm. non-zero
; hwf : + 1581210102105100 90 (1.67258e+027) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010110011 #b1101001101010001111011110100011000000110111001111010)))
(assert (= r (fp #b0 #b10001011001 #b0101100111100001101000101010011100111000010000001100)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

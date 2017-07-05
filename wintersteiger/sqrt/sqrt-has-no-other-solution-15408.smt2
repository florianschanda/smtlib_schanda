(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1530690632866893441388356222887523472309112548828125p879 {+ 689361776379885 879 (4.64752e+264)}
; 1.1530690632866893441388356222887523472309112548828125p879 S == 1.5185974208371941784889713744632899761199951171875p439
; [HW: 1.5185974208371941784889713744632899761199951171875p439] 

; mpf : + 2335555151237688 439
; mpfd: + 2335555151237688 439 (2.15581e+132) class: Pos. norm. non-zero
; hwf : + 2335555151237688 439 (2.15581e+132) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101101110 #b0010011100101111100010001011110011011000011111101101)))
(assert (= r (fp #b0 #b10110110110 #b1000010011000010110011001111001001001001001000111000)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

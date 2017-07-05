(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8912049883615142942261400094139389693737030029296875p-964 {+ 4013630453495643 -964 (1.21289e-290)}
; Y = 1.1707795342309978980921414404292590916156768798828125p-862 {+ 769122646725229 -862 (3.80732e-260)}
; 1.8912049883615142942261400094139389693737030029296875p-964 m 1.1707795342309978980921414404292590916156768798828125p-862 == 1.8912049883615142942261400094139389693737030029296875p-964
; [HW: 1.8912049883615142942261400094139389693737030029296875p-964] 

; mpf : + 4013630453495643 -964
; mpfd: + 4013630453495643 -964 (1.21289e-290) class: Pos. norm. non-zero
; hwf : + 4013630453495643 -964 (1.21289e-290) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000111011 #b1110010000100110000000101001011100001011011101011011)))
(assert (= y (fp #b0 #b00010100001 #b0010101110111000001101010010001001011001001001101101)))
(assert (= r (fp #b0 #b00000111011 #b1110010000100110000000101001011100001011011101011011)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)

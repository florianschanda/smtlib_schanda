(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.40671817096258688906118550221435725688934326171875p-316 {+ 1831695803191916 -316 (1.05373e-095)}
; 1.40671817096258688906118550221435725688934326171875p-316 S == 1.1860515043464960882602099445648491382598876953125p-158
; [HW: 1.1860515043464960882602099445648491382598876953125p-158] 

; mpf : + 837901485646600 -158
; mpfd: + 837901485646600 -158 (3.24612e-048) class: Pos. norm. non-zero
; hwf : + 837901485646600 -158 (3.24612e-048) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011000011 #b0110100000011110101011101001101011111001001001101100)))
(assert (= r (fp #b0 #b01101100001 #b0010111110100001000100100100011010001010001100001000)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)

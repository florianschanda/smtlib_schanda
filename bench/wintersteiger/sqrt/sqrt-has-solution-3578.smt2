(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5437783013037094104191737642395310103893280029296875p-187 {+ 2448959755123547 -187 (7.87002e-057)}
; 1.5437783013037094104191737642395310103893280029296875p-187 S == 1.7571444455728217892698239666060544550418853759765625p-94
; [HW: 1.7571444455728217892698239666060544550418853759765625p-94] 

; mpf : + 3409875442947401 -94
; mpfd: + 3409875442947401 -94 (8.87131e-029) class: Pos. norm. non-zero
; hwf : + 3409875442947401 -94 (8.87131e-029) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101000100 #b1000101100110101000011100000010001011111101101011011)))
(assert (= r (fp #b0 #b01110100001 #b1100000111010100001101111110100000010101010101001001)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)

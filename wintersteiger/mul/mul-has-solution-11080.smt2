(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9377661121113523012837731585022993385791778564453125p-571 {+ 4223323113065365 -571 (2.50711e-172)}
; Y = 1.6837543414111542094957485460327006876468658447265625p-216 {+ 3079355797192233 -216 (1.59882e-065)}
; 1.9377661121113523012837731585022993385791778564453125p-571 * 1.6837543414111542094957485460327006876468658447265625p-216 == 1.6313610519534516019035663703107275068759918212890625p-786
; [HW: 1.6313610519534516019035663703107275068759918212890625p-786] 

; mpf : + 2843397398313809 -786
; mpfd: + 2843397398313809 -786 (4.00842e-237) class: Pos. norm. non-zero
; hwf : + 2843397398313809 -786 (4.00842e-237) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111000100 #b1111000000010001011100001001111011010000101110010101)))
(assert (= y (fp #b0 #b01100100111 #b1010111100001010100001100100011011011011111000101001)))
(assert (= r (fp #b0 #b00011101101 #b1010000110100000111000001011111000011011101101010001)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)

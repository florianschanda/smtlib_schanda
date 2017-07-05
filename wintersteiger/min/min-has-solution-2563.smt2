(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0724278016334720664559654323966242372989654541015625p601 {+ 326185820447769 601 (8.90011e+180)}
; Y = -1.3227089805768696972876341533265076577663421630859375p195 {- 1453352044675103 195 (-6.64222e+058)}
; 1.0724278016334720664559654323966242372989654541015625p601 m -1.3227089805768696972876341533265076577663421630859375p195 == -1.3227089805768696972876341533265076577663421630859375p195
; [HW: -1.3227089805768696972876341533265076577663421630859375p195] 

; mpf : - 1453352044675103 195
; mpfd: - 1453352044675103 195 (-6.64222e+058) class: Neg. norm. non-zero
; hwf : - 1453352044675103 195 (-6.64222e+058) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001011000 #b0001001010001010101000001101111101010110010000011001)))
(assert (= y (fp #b1 #b10011000010 #b0101001010011101000011100100010110110100000000011111)))
(assert (= r (fp #b1 #b10011000010 #b0101001010011101000011100100010110110100000000011111)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)

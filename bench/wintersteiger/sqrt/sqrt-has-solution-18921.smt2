(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.34633752194072098262722647632472217082977294921875p974 {+ 1559765534756652 974 (2.14966e+293)}
; 1.34633752194072098262722647632472217082977294921875p974 S == 1.1603178538403693398350924326223321259021759033203125p487
; [HW: 1.1603178538403693398350924326223321259021759033203125p487] 

; mpf : + 722007426816325 487
; mpfd: + 722007426816325 487 (4.63644e+146) class: Pos. norm. non-zero
; hwf : + 722007426816325 487 (4.63644e+146) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111001101 #b0101100010101001100100110110101000011100111100101100)))
(assert (= r (fp #b0 #b10111100110 #b0010100100001010100101110100001100110101100101000101)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)

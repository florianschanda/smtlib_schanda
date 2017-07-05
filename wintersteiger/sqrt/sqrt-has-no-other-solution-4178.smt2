(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.373583240396007543182577137486077845096588134765625p485 {+ 1682469342239322 485 (1.37215e+146)}
; 1.373583240396007543182577137486077845096588134765625p485 S == 1.6574578368067209854785915013053454458713531494140625p242
; [HW: 1.6574578368067209854785915013053454458713531494140625p242] 

; mpf : + 2960926868854561 242
; mpfd: + 2960926868854561 242 (1.17139e+073) class: Pos. norm. non-zero
; hwf : + 2960926868854561 242 (1.17139e+073) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111100100 #b0101111110100011001001101011011111010101101001011010)))
(assert (= r (fp #b0 #b10011110001 #b1010100001001111001010000010001110010101011100100001)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)

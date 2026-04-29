(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4312902074359648008083922832156531512737274169921875p-641 {- 1942358417497155 -641 (-1.56856e-193)}
; -1.4312902074359648008083922832156531512737274169921875p-641 | == 1.4312902074359648008083922832156531512737274169921875p-641
; [HW: 1.4312902074359648008083922832156531512737274169921875p-641] 

; mpf : + 1942358417497155 -641
; mpfd: + 1942358417497155 -641 (1.56856e-193) class: Pos. norm. non-zero
; hwf : + 1942358417497155 -641 (1.56856e-193) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101111110 #b0110111001101001000010001111100000000101110001000011)))
(assert (= r (fp #b0 #b00101111110 #b0110111001101001000010001111100000000101110001000011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)

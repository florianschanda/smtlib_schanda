(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9461210870808771655759983332245610654354095458984375p-832 {- 4260950575224807 -832 (-6.79538e-251)}
; Y = 1.760998431791860330264398726285435259342193603515625p130 {+ 3427232253847354 130 (2.39695e+039)}
; -1.9461210870808771655759983332245610654354095458984375p-832 * 1.760998431791860330264398726285435259342193603515625p130 == -1.7135580912132477582332512611174024641513824462890625p-701
; [HW: -1.7135580912132477582332512611174024641513824462890625p-701] 

; mpf : - 3213579953695185 -701
; mpfd: - 3213579953695185 -701 (-1.62882e-211) class: Neg. norm. non-zero
; hwf : - 3213579953695185 -701 (-1.62882e-211) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010111111 #b1111001000110100111111011101011100010001011111100111)))
(assert (= y (fp #b0 #b10010000001 #b1100001011010000110010110001000011011010011100111010)))
(assert (= r (fp #b1 #b00101000010 #b1011011010101011101111100011100110001110100111010001)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
